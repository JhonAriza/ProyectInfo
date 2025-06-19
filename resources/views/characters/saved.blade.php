@extends('layouts.app')

@section('content')

<div class="container">
    <h1 class="text-center mb-4">Personajes guardados</h1>

    <table class="table table-bordered table-hover table-striped align-middle">
        <thead class="table-dark">
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Nombre</th>
                <th scope="col">Status</th>
                <th scope="col">Especie</th>
                <th scope="col">Imagen</th>
                <th scope="col">Acción</th>
            </tr>
        </thead>
        <tbody>
            @foreach($characters as $char)
                <tr>
                    <td>{{ $char->id }}</td>
                    <td>{{ $char->name }}</td>
                    <td>{{ $char->status }}</td>
                    <td>{{ $char->species }}</td>
                    <td>
                        <img src="{{ $char->image }}" width="50" class="rounded">
                    </td>
                    <td>
                        <a href="{{ route('characters.show', $char->id) }}" class="btn btn-info btn-sm me-2">Detalle</a>
                        <a href="{{ route('characters.edit', $char->id) }}" class="btn btn-warning btn-sm">Editar</a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>

@endsection
