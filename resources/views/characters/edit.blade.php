@extends('layouts.app')

@section('content')
<h1>Editar Personaje</h1>

<form action="{{ route('characters.update', $character->id) }}" method="POST">
    @csrf
    @method('PUT')

    <div class="container mt-4">
        <div class="row">

            <div class="col-md-8">
                <div class="mb-3">
                    <label class="form-label">Nombre:</label>
                    <input type="text" name="name" class="form-control" value="{{ old('name', $character->name) }}">
                </div>

                <div class="mb-3">
                    <label class="form-label">Status:</label>
                    <input type="text" name="status" class="form-control" value="{{ old('status', $character->status) }}">
                </div>

                <div class="mb-3">
                    <label class="form-label">Especie:</label>
                    <input type="text" name="species" class="form-control" value="{{ old('species', $character->species) }}">
                </div>

                <div class="mb-3">
                    <label class="form-label">Género:</label>
                    <input type="text" name="gender" class="form-control" value="{{ old('gender', $character->gender) }}">
                </div>

            </div>

            <div class="col-md-4 text-center">
                @if($character->image)
                <p class="fw-bold"> imagen actual:</p>
                <img src="{{ $character->image }}" alt="Imagen actual" class="img-fluid rounded shadow" style="max-width: 60%;">
                @endif
                <div>
                    <p class="fw-bold">Nueva imagen selecionada</p>
                    <img id="previewImage" src="{{ old('image', $character->image) }}" alt="Vista previa" style="max-width: 60%;" class="img-thumbnail">
                </div>
            </div>


        </div>
    </div>



    <br>

    <div class="mb-3">
        <label for="image" class="form-label"><strong>Selecciona una nueva imagen:</strong></label>
        <select name="image" id="image" class="form-select" onchange="updatePreview()">
            @foreach ($images as $img)
            <option value="{{ $img }}" {{ old('image', $character->image) == $img ? 'selected' : '' }}>
                {{ $img }}
            </option>
            @endforeach
        </select>
    </div>

    <div class="mb-3">
        <button type="submit" class="btn btn-success">Guardar cambios</button>

    </div>


</form>
@endsection
<script>
    function updatePreview() {
        const select = document.getElementById('image');
        const preview = document.getElementById('previewImage');
        preview.src = select.value;
    }

</script>
