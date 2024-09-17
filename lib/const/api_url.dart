// const String baseUrl = "https://erp.aaragroups.com"; //local
// const String baseUrl = "https://b1.bharaterp.com"; //live

const String baseUrl = "http://45.64.156.214:9093"; //IP ->live
// const String baseUrl = "https://erpstaging.aaragroups.com"; //IP ->live

const String loginUrl =
    "$baseUrl/Api_data/user-login-with-password-api-of-bhaaraterp/";

const String productUrl = "$baseUrl/store-data-api-of-bhaaraterp/";

const String salesOrderOnlineUrl = "sales/pos-order-api-of-bhaaratpos/";
const String salesOrderUrl =
    "$baseUrl/sales/bulk-pos-order-create-api-of-bhaaratpos/";

const String addCustomerOnlineUrl = "sales/add-customer-api-of-bhaaratpos/";
const String addCustomerUrl =
    "$baseUrl/sales/bulk-customer-create-api-of-bhaaratpos/";

const String customerListUrl =
    "$baseUrl/sales/customer-data-api-of-bhaaratpos/";

const String profileURl = "$baseUrl/store-profile-details-api-of-bhaaraterp/";

const String orderHistoryUrl = "$baseUrl/sales/pos-order-api-of-bhaaratpos/";
const String accountTypeUrl =
    "$baseUrl/sales/pos-payment-account-for-single-payment-api-of-bhaaratpos/?payment_mode_type=Card";
const String invoiceRefundUrl =
    "$baseUrl/sales/pos-order-invoice-api-of-bhaaratpos/?invoice_id=";
const String searchInvoiceUrl =
    "$baseUrl/sales/pos-order-invoice-api-of-bhaaratpos/?search=";
const String refundUrlUrl =
    "$baseUrl/sales/pos-return-refund-order-api-of-bhaaratpos/";

const String contactUsUrl = "$baseUrl/Api_data/add-contact-us/";

//kot
const String kotTableUrl = "$baseUrl/restaurant/floor-table-api-of-bhaaraterp/";

//product add
const String addCategoryUrl = "product/category-api-of-bhaaraterp/";
const String addBrandUrl = "product/brand-api-of-bhaaraterp/";
const String getCategoryUrl = "product/category-api-of-bhaaraterp/";
const String getSubCategoryUrl = "product/subcategory-api-of-bhaaraterp/";
const String getBrandUrl = "product/brand-api-of-bhaaraterp/";

//vendor
const String vendorListUrl = "store-vendor-data-api-of-bhaaraterp/";
const String addVendorListUrl = "add-store-vendor-data-api-of-bhaaraterp/";
// const String vendorListUrl = "$baseUrl/store-vendor-data-api-of-bhaaraterp/";
const String purchaseInvoiceListUrl =
    "store-purchase-invoice-data-api-of-bhaaraterp/";
const String productListUrl = "$baseUrl/store-product-data-api-of-bhaaraterp/";
const String batchListUrl = "store-batch-data-api-of-bhaaraterp/";

const int local = 23;
const int live = 1;

const int prettyCash = local;
// const int prettyCash = live;
