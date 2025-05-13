@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Vehicle Type Details'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_VEHTYPE_DETAILS
  as select from DDCDS_CUSTOMER_DOMAIN_VALUE_T( p_domain_name: 'ZEI_VEHTYPE' )
{
      //  key domain_name,
      //  key value_position,
      //      @Semantics.language: true
      //  key language,
      @EndUserText.label: 'Vehicle Type'
  key value_low as value,
      @Semantics.text: true
      @EndUserText.label: 'Description'
      text      as description
}
