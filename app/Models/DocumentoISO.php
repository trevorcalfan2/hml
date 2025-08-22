<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DocumentoIso extends Model
{ public $timestamps = false;
    protected $table = 'documento_iso';
    protected $primaryKey = 'id';

    protected $fillable = ['doc_id','estado', 'responsable', 'fecha_revision', 'fecha_aprobacion', 'aprobado_por',
        'archivo', 'anio', 'mes', 'comentarios',
        'process_id', 'doctype_id', 'estado_workflow', 'aprobador_id', 'fecha_aprobacion_workflow','created_by'
    ];

    public function process()
    {
        return $this->belongsTo(Process::class, 'process_id', 'process_id');
    }

    public function doctype()
    {
        return $this->belongsTo(Doctype::class, 'doctype_id', 'doctype_id');
    }

    public function versiones()
    {
        return $this->hasMany(DocumentoIsoVersion::class, 'documento_iso_id');
    }

    public function logs()
    {
        return $this->hasMany(DocumentoIsoLog::class, 'documento_iso_id');
    }
    public function responsableAdmin()
    {
        return $this->belongsTo(\App\Models\Admin::class, 'responsable');
    }

    public function aprobador()
    {
        return $this->belongsTo(\App\Models\Admin::class, 'aprobado_por');
    }

  
}

