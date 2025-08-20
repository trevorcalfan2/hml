<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Process extends Model
{
    protected $table = 'process';
    protected $primaryKey = 'process_id';

    protected $fillable = ['nombre', 'area_id'];

    public function area()
    {
        return $this->belongsTo(Area::class, 'area_id', 'area_id');
    }

    // Si quieres saber qué documentos ISO tiene este proceso:
    public function documentos()
    {
        return $this->hasMany(DocumentoIso::class, 'process_id', 'process_id');
    }
}
