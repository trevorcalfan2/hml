<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DocumentoIsoVersion extends Model
{
    protected $table = 'documento_iso_versions';
    protected $primaryKey = 'id';

    protected $fillable = [
        'documento_iso_id', 'archivo', 'comentario', 'user_id', 'created_at'
    ];

    public $timestamps = false; // Usamos created_at manual

    public function documento()
    {
        return $this->belongsTo(DocumentoIso::class, 'documento_iso_id');
    }
}

?>