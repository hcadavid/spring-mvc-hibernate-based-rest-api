package edu.eci.cosw.polizas.entidades;
// Generated Aug 20, 2014 7:58:33 AM by Hibernate Tools 3.6.0


import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * PolizasAprobadasId generated by hbm2java
 */
@Embeddable
public class PolizasAprobadasId  implements java.io.Serializable {


     private int clientesId;
     private String clientesTipoId;
     private int polizasCodigoPoliza;

    public PolizasAprobadasId() {
    }

    public PolizasAprobadasId(int clientesId, String clientesTipoId, int polizasCodigoPoliza) {
       this.clientesId = clientesId;
       this.clientesTipoId = clientesTipoId;
       this.polizasCodigoPoliza = polizasCodigoPoliza;
    }
   


    @Column(name="CLIENTES_id", nullable=false)
    public int getClientesId() {
        return this.clientesId;
    }
    
    public void setClientesId(int clientesId) {
        this.clientesId = clientesId;
    }


    @Column(name="CLIENTES_tipo_id", nullable=false, length=3)
    public String getClientesTipoId() {
        return this.clientesTipoId;
    }
    
    public void setClientesTipoId(String clientesTipoId) {
        this.clientesTipoId = clientesTipoId;
    }


    @Column(name="POLIZAS_codigo_poliza", nullable=false)
    public int getPolizasCodigoPoliza() {
        return this.polizasCodigoPoliza;
    }
    
    public void setPolizasCodigoPoliza(int polizasCodigoPoliza) {
        this.polizasCodigoPoliza = polizasCodigoPoliza;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof PolizasAprobadasId) ) return false;
		 PolizasAprobadasId castOther = ( PolizasAprobadasId ) other; 
         
		 return (this.getClientesId()==castOther.getClientesId())
 && ( (this.getClientesTipoId()==castOther.getClientesTipoId()) || ( this.getClientesTipoId()!=null && castOther.getClientesTipoId()!=null && this.getClientesTipoId().equals(castOther.getClientesTipoId()) ) )
 && (this.getPolizasCodigoPoliza()==castOther.getPolizasCodigoPoliza());
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + this.getClientesId();
         result = 37 * result + ( getClientesTipoId() == null ? 0 : this.getClientesTipoId().hashCode() );
         result = 37 * result + this.getPolizasCodigoPoliza();
         return result;
   }   


}

