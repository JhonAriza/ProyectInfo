<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Http;
use App\Models\Character;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Throwable;
class CharacterController extends Controller
{
public function index()
{  try {
    if (Character::count() == 0) {
        $characters = [];

        $httpClient = Http::withOptions([
            'verify' => false, // Evita error SSL loalmente
        ]);

        for ($i = 1; $i <= 5; $i++) {
            $response = $httpClient->get("https://rickandmortyapi.com/api/character?page=$i");

            if ($response->successful()) {
                $data = $response->json();
                $characters = array_merge($characters, $data['results']);
            }
        }

        return view('characters.index', compact('characters'));
    } else {
        $characters = Character::all();
        return view('characters.saved', compact('characters'));
    }
      } catch (Throwable $th) {
            DB::rollBack();

            return response()->json([
                'code' => 500,
                'message' => 'Algo Ocurrio, Comunicate Con Desarrollo',
                'error' => $th->getMessage(),
                'line' => $th->getLine(),
            ], 500);
        }
}

public function store(Request $request)
{
    $characters = json_decode(base64_decode($request->input('characters')), true);

    foreach ($characters as $char) {
        Character::updateOrCreate(
            ['id' => $char['id']],
            [
                'name' => $char['name'],
                'status' => $char['status'],
                'species' => $char['species'],
                'type' => $char['type'],
                'gender' => $char['gender'],
                'origin_name' => $char['origin']['name'],
                'origin_url' => $char['origin']['url'],
                'image' => $char['image'],
            ]
        );
    }

    return redirect('/')->with('message', '¡Personajes guardados en la base de datos!');
}

public function show($id)
{
    $character = Character::findOrFail($id);

    return view('characters.show', compact('character'));
}

public function detailFromApi($id)
{
    $response = Http::withOptions(['verify' => false])
        ->get("https://rickandmortyapi.com/api/character/$id");

    if ($response->successful()) {
        $character = $response->json();
        return view('characters.detail', compact('character'));
    } else {
        abort(404, 'Personaje no encontrado en la API');
    }
}
public function edit($id)
{
    $character = Character::findOrFail($id);
    $images = [];

    // Obtener imágenes desde la API (3 páginas = ~60 personajes)
    for ($i = 1; $i <= 3; $i++) {
        $response = Http::withOptions(['verify' => false])
            ->get("https://rickandmortyapi.com/api/character?page=$i");

        if ($response->successful()) {
            $data = $response->json();
            foreach ($data['results'] as $char) {
                $images[] = $char['image'];
            }
        }
    }

    return view('characters.edit', compact('character', 'images'));
}


public function update(Request $request, $id)
{
    $character = Character::findOrFail($id);

    $character->update([
        'name' => $request->input('name'),
        'status' => $request->input('status'),
        'species' => $request->input('species'),
        'type' => $request->input('type'),
        'gender' => $request->input('gender'),
        'origin_name' => $request->input('origin_name'),
        'origin_url' => $request->input('origin_url'),
        'image' => $request->input('image'),

    ]);

    return redirect()->route('characters.show', $character->id)->with('success', 'Personaje actualizado.');
}

}

