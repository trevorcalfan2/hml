<?php 

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DocumentoISORegistro extends Model
{
    protected $table = 'documento_iso_registro';

    protected $fillable = [
        'documento_iso_id', 'anio', 'mes', 'frecuencia', 'archivo',
        'comentario', 'responsable_id', 'fecha_registro', 'estado'
    ];

    public $timestamps = true; // Usa created_at y updated_at

    public function documento()
    {
        return $this->belongsTo(DocumentoIso::class, 'documento_iso_id');
    }

    public function responsable()
    {
        return $this->belongsTo(Admin::class, 'responsable_id');
    }
}

?>