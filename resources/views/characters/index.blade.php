@extends('layouts.app')

@section('content')

<div class="container mt-4">
    <h1 class="text-center mb-4">Listado de Personajes desde la API </h1>

    <form action="{{ route('characters.store') }}" method="POST" class="text-center mb-4">
        @csrf
        <input type="hidden" name="characters" value="{{ base64_encode(json_encode($characters)) }}">

        <button type="submit" class="btn btn-warning">Guardar personajes en la base de datos</button>


    </form>

    <div class="table-responsive">
        <table class="table table-bordered table-hover align-middle text-center">
            <thead class="table-dark">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Estado</th>
                    <th scope="col">Especie</th>
                    <th scope="col">Imagen</th>

                </tr>
            </thead>
            <tbody>
                @foreach ($characters as $char)
                    <tr class="{{ $char['status'] === 'Alive' ? 'table-success' : ($char['status'] === 'Dead' ? 'table-danger' : 'table-secondary') }}">
                        <td>{{ $char['id'] }}</td>
                        <td>{{ $char['name'] }}</td>
                        <td>{{ $char['status'] }}</td>
                        <td>{{ $char['species'] }}</td>
                        <td><img src="{{ $char['image'] }}" width="80" class="rounded shadow-sm"></td>

                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>

@endsection
