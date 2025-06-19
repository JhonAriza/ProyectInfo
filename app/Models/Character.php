<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Character extends Model
{
    protected $fillable = [
        'id',
        'name',
        'status',
        'species',
        'type',
        'gender',
        'origin_name',
        'origin_url',
        'image',
    ];

    protected $primaryKey = 'id';
    public $incrementing = false; // porque el ID viene de la API
}
