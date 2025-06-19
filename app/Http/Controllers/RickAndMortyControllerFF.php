<?php

namespace App\Http\Controllers;


use Illuminate\Support\Facades\Http;

class RickAndMortyController extends Controller
{
    public function index()
    {
        $response = Http::withOptions([
            'verify' => false,
        ])->get('https://rickandmortyapi.com/api/character?page=1');

        if ($response->successful()) {
            $characters = $response->json()['results'];

            return view('characters.index', compact('characters'));
        }

        return response()->json(['error' => 'Error al consumir la API'], 500);
    }
}
