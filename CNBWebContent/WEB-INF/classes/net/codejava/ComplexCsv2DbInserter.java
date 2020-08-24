
package net.codejava;
 
import java.io.*;
import java.sql.*;
 
import org.supercsv.cellprocessor.Optional;
import org.supercsv.cellprocessor.ParseDouble;
import org.supercsv.cellprocessor.constraint.NotNull;
import org.supercsv.cellprocessor.ift.CellProcessor;
import org.supercsv.io.CsvBeanReader;
import org.supercsv.io.ICsvBeanReader;
import org.supercsv.prefs.CsvPreference;
 
public class ComplexCsv2DbInserter {
 
    public static void main(String[] args){
        String jdbcURL = "jdbc:mysql://localhost:3306/spark";
        String username = "root";
        String password = "LOVE1@nother007";
 
        String csvFilePath = "/Users/hargovindsingh/Documents/Harry'sProfessionalData/Online Interviews/CNB/CNBSkillTest-Hargovind-2/DatabaseSchemas/SampleWishOrderFile.csv";
     
        int batchSize = 20;
 
        Connection connection = null;
 
        ICsvBeanReader beanReader = null;
        CellProcessor[] processors = new CellProcessor[] {
                new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull(), new NotNull()
        };
 
    
    
        try {
            long start = System.currentTimeMillis();
 
            connection = DriverManager.getConnection(jdbcURL, username, password);
            connection.setAutoCommit(false);
 
            String sql = "INSERT INTO WishOrders (TransactionDate, OrderId, TransactionID, OrderState, SKU, Product, ProductID, ProductLink, ProductImageURL, Size, Color, CurrencyCode, PriceEach, CostEach, ShippingEach, ShippingCostEach, Quantity, TotalCost, SECashbackAmount, AvailableForFulfillmentTime, ShippedOn, ConfirmedDelivery, DateShippingCarrierConfirmedDelivery, Provider, Tracking, TrackingConfirmed, TrackingConfirmedDate, ShippingAddress, Name, FirstName, LastName, StreetAddress1, StreetAddress2, City, State, Zipcode, Country, LastUpdated, PhoneNumber, CountryCode, PercentageRefundResponsibility, RefundResponsibilityAmount, RefundDate, RefundReason, IsWishExpress, WishExpressDeliveryDeadline, RequiresDeliveryConfirmation, AdvancedLogistics, IsCombinedOrder, PremiumCarrierUpgraded, LateConfirmedFulfillmentFineAmount, CustomerIdentityNumber, FinalProductPrice, FinalShippingPrice, FinalTotalProductPrice, FinalTotalShippingPrice, FinalTotalPrice, FinalPricesCurrency, IsReplacementOrder, OriginalReplacementOrderID, FulfillmentByStoreFBSOrder) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
 
            beanReader = new CsvBeanReader(new FileReader(csvFilePath),
                    CsvPreference.STANDARD_PREFERENCE);
 
            beanReader.getHeader(true); // skip header line
 
            String[] header = {"TransactionDate", "OrderId", "TransactionID", "OrderState", "SKU", "Product", "ProductID", "ProductLink", "ProductImageURL", "Size", "Color", "CurrencyCode", "PriceEach", "CostEach", "ShippingEach", "ShippingCostEach", "Quantity", "TotalCost", "SECashbackAmount", "AvailableForFulfillmentTime", "ShippedOn", "ConfirmedDelivery", "DateShippingCarrierConfirmedDelivery", "Provider", "Tracking", "TrackingConfirmed", "TrackingConfirmedDate", "ShippingAddress", "Name", "FirstName", "LastName", "StreetAddress1", "StreetAddress2", "City", "State", "Zipcode", "Country", "LastUpdated", "PhoneNumber", "CountryCode", "PercentageRefundResponsibility", "RefundResponsibilityAmount", "RefundDate", "RefundReason", "IsWishExpress", "WishExpressDeliveryDeadline", "RequiresDeliveryConfirmation", "AdvancedLogistics", "IsCombinedOrder", "PremiumCarrierUpgraded", "LateConfirmedFulfillmentFineAmount", "CustomerIdentityNumber", "FinalProductPrice", "FinalShippingPrice", "FinalTotalProductPrice", "FinalTotalShippingPrice", "FinalTotalPrice", "FinalPricesCurrency", "IsReplacementOrder", "OriginalReplacementOrderID", "FulfillmentByStoreFBSOrder"};
            WishOrder bean = null;
 
            int count = 0;
 
            while ((bean = beanReader.read(WishOrder.class, header, processors)) != null) {
    
         String TransactionDate = bean.getTransactionDate();
         String OrderId = bean.getOrderId() ;
         String TransactionID = bean.getTransactionID() ;
         String OrderState = bean.getOrderState ;
         String SKU = bean.getSKU() ;
         String Product = bean.getProduct() ;
         String ProductID = bean.getProductID() ;
         String ProductLink = bean.getProductLink() ;
         String ProductImageURL = bean.getProductImageURL() ;
         String Size = bean.getSize() ;
         String Color = bean.getColor() ;
         String CurrencyCode = bean.getCurrencyCode() ;
         String PriceEach = bean.getPriceEach() ;
         String CostEach = bean.getCostEach() ;
         String ShippingEach = bean.getShippingEach() ;
         String ShippingCostEach = bean.getShippingCostEach() ;
         String Quantity = bean.getQuantity() ;
         String TotalCost = bean.getTotalCost() ;
         String SECashbackAmount = bean.getSECashbackAmount() ;
         String AvailableForFulfillmentTime = bean.getAvailableForFulfillmentTime() ;
         String ShippedOn = bean.getShippedOn() ;
         String ConfirmedDelivery = bean.getConfirmedDelivery() ;
         String DateShippingCarrierConfirmedDelivery; = bean.getDateShippingCarrierConfirmedDelivery();
         String Provider = bean.getProvider() ;
         String Tracking = bean.getTracking() ;
         String TrackingConfirmed = bean.getTrackingConfirmed() ;
         String TrackingConfirmedDate = bean.getTrackingConfirmedDate() ;
         String ShippingAddress = bean.getShippingAddress() ;
         String Name = bean.getName() ;
         String FirstName = bean.getFirstName() ;
         String LastName = bean.getLastName() ;
         String StreetAddress1 = bean.getStreetAddress1() ;
         String StreetAddress2 = bean.getStreetAddress2() ;
         String City = bean.getCity() ;
         String State = bean.getState() ;
         String Zipcode = bean.getZipcode() ;
         String Country = bean.getCountry() ;
         String LastUpdated = bean.getLastUpdated() ;
         String PhoneNumber = bean.getPhoneNumber() ;
         String CountryCode = bean.getCountryCode() ;
         String PercentageRefundResponsibility = bean.getPercentageRefundResponsibility() ;
         String RefundResponsibilityAmount = bean.getRefundResponsibilityAmount() ;
         String RefundDate = bean.getRefundDate() ;
         String RefundReason = bean.getRefundReason() ;
         String IsWishExpress = bean.getIsWishExpress() ;
         String WishExpressDeliveryDeadline = bean.getWishExpressDeliveryDeadline() ;
         String RequiresDeliveryConfirmation = bean.getRequiresDeliveryConfirmation() ;
         String AdvancedLogistics = bean.getAdvancedLogistics() ;
         String IsCombinedOrder = bean.getIsCombinedOrder() ;
         String PremiumCarrierUpgraded = bean.getPremiumCarrierUpgraded() ;
         String LateConfirmedFulfillmentFineAmount = bean.getLateConfirmedFulfillmentFineAmount() ;
         String CustomerIdentityNumber = bean.getCustomerIdentityNumber() ;
         String FinalProductPrice = bean.getFinalProductPrice() ;
         String FinalShippingPrice = bean.getFinalShippingPrice() ;
         String FinalTotalProductPrice = bean.getFinalTotalProductPrice() ;
         String FinalTotalShippingPrice = bean.getFinalTotalShippingPrice() ;
         String FinalTotalPrice = bean.getFinalTotalPrice() ;
         String FinalPricesCurrency = bean.getFinalPricesCurrency() ;
         String IsReplacementOrder = bean.getIsReplacementOrder() ;
         String OriginalReplacementOrderID = bean.getOriginalReplacementOrderID() ;
         String FulfillmentByStoreFBSOrder = bean.getFulfillmentByStoreFBSOrder() ;

    
    /*
                String courseName = bean.getCourseName();
                String studentName = bean.getStudentName();
                Timestamp timestamp = bean.getTimestamp();
                double rating = bean.getRating();
                String comment = bean.getComment();
 */
    
    
    statement.setString(1, TransactionDate);
    statement.setString(2, OrderId);
    statement.setString(3, TransactionID);
    statement.setString(4, studentName);
    statement.setString(5, OrderState);
    statement.setString(6, SKU);
    statement.setString(7, Product);
    statement.setString(8, ProductID);
    statement.setString(9, ProductLink);
    statement.setString(10, ProductImageURL);
        statement.setString(11, Size);
        statement.setString(12, Color);
        statement.setString(13, CurrencyCode);
        statement.setString(14, PriceEach);
        statement.setString(15, CostEach);
        statement.setString(16, ShippingEach);
        statement.setString(17, ShippingCostEach);
        statement.setString(18, Quantity);
        statement.setString(19, TotalCost);
        statement.setString(20, SECashbackAmount);
        statement.setString(21, AvailableForFulfillmentTime);
        statement.setString(22, ShippedOn);
        statement.setString(23, studentName);
        statement.setString(24, studentName);
        statement.setString(25, courseName);
        statement.setString(26, courseName);
        statement.setString(27, courseName);
        statement.setString(28, courseName);
        statement.setString(29, courseName);
        statement.setString(30, courseName);
        statement.setString(31, courseName);
        statement.setString(32, studentName);
        statement.setString(33, studentName);
        statement.setString(34, studentName);
        statement.setString(35, courseName);
        statement.setString(36, courseName);
        statement.setString(37, courseName);
        statement.setString(38, courseName);
        statement.setString(39, courseName);
        statement.setString(40, courseName);
        statement.setString(41, courseName);
        statement.setString(42, studentName);
        statement.setString(43, studentName);
        statement.setString(44, studentName);
        statement.setString(45, courseName);
        statement.setString(46, courseName);
        statement.setString(47, courseName);
        statement.setString(48, courseName);
        statement.setString(49, courseName);
        statement.setString(50, courseName);
        statement.setString(51, courseName);
        statement.setString(52, studentName);
        statement.setString(53, studentName);
        statement.setString(54, studentName);
        statement.setString(55, courseName);
        statement.setString(56, courseName);
        statement.setString(57, courseName);
        statement.setString(58, courseName);
        statement.setString(59, courseName);
        statement.setString(60, courseName);
    statement.setString(61, courseName);
    statement.setString(62, courseName);

    
    
                statement.addBatch();
 
                if (count % batchSize == 0) {
                    statement.executeBatch();
                }
            }
 
            beanReader.close();
 
            // execute the remaining queries
            statement.executeBatch();
 
            connection.commit();
            connection.close();
 
            long end = System.currentTimeMillis();
            System.out.println("Execution Time: " + (end - start));
        } catch (IOException ex) {
            System.err.println(ex);
        } catch (SQLException ex) {
            ex.printStackTrace();
 
            try {
                connection.rollback();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
 
    }
}
