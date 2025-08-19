<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Doctype extends Model
{
    protected $table = 'doctype';
    protected $primaryKey = 'doctype_id';

    protected $fillable = ['nombre'];

    public function documentos()
    {
        return $this->hasMany(DocumentoIso::class, 'doctype_id', 'doctype_id');
    }
}

