@EndUserText.label: 'Shop projection'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
define root view entity ZC_ONLINE_SHOP_47
  as projection on ZI_ONLINE_SHOP_47
{
  key Order_Uuid,
      Order_Id,
      OrderedItem,
      DeliveryDate,
      CreationDate,
      PackageId,
      CostCenter,
      _Shop.purchasereqn as Purchasereqn
}
