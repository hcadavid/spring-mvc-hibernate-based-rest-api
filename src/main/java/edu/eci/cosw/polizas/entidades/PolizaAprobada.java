package edu.eci.cosw.polizas.entidades;
// Generated Aug 20, 2014 7:58:33 AM by Hibernate Tools 3.6.0


import java.util.Date;
import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * PolizasAprobadas generated by hbm2java
 */
@Entity
@Table(name="POLIZAS_APROBADAS"
)
public class PolizaAprobada  implements java.io.Serializable {


     private PolizasAprobadasId id;
     private TipoPoliza tiposPoliza;
     private Date fechaAprobacion;
     private Date fechaVencimiento;

    public PolizaAprobada() {
    }

    public PolizaAprobada(PolizasAprobadasId id, TipoPoliza tiposPoliza, Cliente clientes, Date fechaAprobacion, Date fechaVencimiento) {
       this.id = id;
       this.tiposPoliza = tiposPoliza;
       this.fechaAprobacion = fechaAprobacion;
       this.fechaVencimiento = fechaVencimiento;
    }
   
     @EmbeddedId

    
    @AttributeOverrides( {
        @AttributeOverride(name="clientesId", column=@Column(name="CLIENTES_id", nullable=false) ), 
        @AttributeOverride(name="clientesTipoId", column=@Column(name="CLIENTES_tipo_id", nullable=false, length=3) ), 
        @AttributeOverride(name="polizasCodigoPoliza", column=@Column(name="POLIZAS_codigo_poliza", nullable=false) ) } )
    public PolizasAprobadasId getId() {
        return this.id;
    }
    
    public void setId(PolizasAprobadasId id) {
        this.id = id;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="POLIZAS_codigo_poliza", nullable=false, insertable=false, updatable=false)
    public TipoPoliza getTiposPoliza() {
        return this.tiposPoliza;
    }
    
    public void setTiposPoliza(TipoPoliza tiposPoliza) {
        this.tiposPoliza = tiposPoliza;
    }

    
    @Temporal(TemporalType.DATE)
    @Column(name="fecha_aprobacion", nullable=false, length=10)
    public Date getFechaAprobacion() {
        return this.fechaAprobacion;
    }
    
    public void setFechaAprobacion(Date fechaAprobacion) {
        this.fechaAprobacion = fechaAprobacion;
    }

    @Temporal(TemporalType.DATE)
    @Column(name="fecha_vencimiento", nullable=false, length=10)
    public Date getFechaVencimiento() {
        return this.fechaVencimiento;
    }
    
    public void setFechaVencimiento(Date fechaVencimiento) {
        this.fechaVencimiento = fechaVencimiento;
    }




}


