@extends('layouts.app')

@section('content')
<div class="container mt-4">
    <h2 class="text-center mb-4">Detalle del Personaje</h2>

    <div class="card shadow">
        <div class="row g-0">
            {{-- Columna izquierda: Imagen principal --}}
            <div class="col-md-4 d-flex flex-column align-items-center justify-content-center p-3">
                <img src="{{ $character->image }}" alt="{{ $character->name }}" class="img-fluid rounded shadow mb-3" style="max-width: 200px;">
                <p class="text-muted">Imagen principal</p>
            </div>

            {{-- Columna derecha: Datos del personaje --}}
            <div class="col-md-8">
                <div class="card-body">
                    <h4 class="card-title">{{ $character->name }}</h4>
                    <ul class="list-group list-group-flush mb-3">
                        <li class="list-group-item"><strong>ID:</strong> {{ $character->id }}</li>
                        <li class="list-group-item"><strong>Status:</strong> {{ $character->status }}</li>
                        <li class="list-group-item"><strong>Especie:</strong> {{ $character->species }}</li>
                        <li class="list-group-item"><strong>Tipo:</strong> {{ $character->type ?: 'No especificado' }}</li>
                        <li class="list-group-item"><strong>Género:</strong> {{ $character->gender }}</li>
                        <li class="list-group-item">
                            <strong>Origen:</strong> {{ $character->origin_name }}
                            @if($character->origin_url)
                                (<a href="{{ $character->origin_url }}" target="_blank">ver origen</a>)
                            @endif
                        </li>
                    </ul>


                    <div class="text-center mb-3">
                        <img src="{{ $character->image }}" alt="Imagen secundaria" class="img-thumbnail" style="max-width: 150px;">
                        <p class="text-muted mt-1">Imagen secundaria</p>
                    </div>

                    <div class="d-flex justify-content-between">
                        <a href="{{ route('characters.edit', $character->id) }}" class="btn btn-warning">Editar</a>
                        <a href="{{ url('/') }}" class="btn btn-secondary">Volver</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
