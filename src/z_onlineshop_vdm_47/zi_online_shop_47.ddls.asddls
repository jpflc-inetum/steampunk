@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Data model for online shop'
define root view entity ZI_ONLINE_SHOP_47
  as select from zonlineshop_47
  association [1..1] to zshop_as_47 as _Shop on $projection.Order_Uuid = _Shop.order_uuid
{
  key order_uuid       as Order_Uuid,
      order_id         as Order_Id,
      ordereditem      as OrderedItem,
      deliverydate     as DeliveryDate,
      creationdate     as CreationDate,
      pkgid            as PackageId,
      _Shop.costcenter as CostCenter,

      /*Associations*/
      _Shop
}
