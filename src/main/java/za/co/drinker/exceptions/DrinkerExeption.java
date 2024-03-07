package za.co.drinker.exceptions;
/*  @author : henry 2024/03/06 */


public class DrinkerExeption extends Throwable {

    private static final long serialVersionUID = 1L;


    private int statusCode;
    private String reasonPhrase;
    private String errorMessage;



    public DrinkerExeption(String message) {
        super(message);
        errorMessage = message;
    }

    public DrinkerExeption() {
    }

    public int getStatusCode() {
        return statusCode;
    }

    public void setStatusCode(int statusCode) {
        this.statusCode = statusCode;
    }

    public String getReasonPhrase() {
        return reasonPhrase;
    }

    public void setReasonPhrase(String reasonPhrase) {
        this.reasonPhrase = reasonPhrase;
    }

    public String getErrorMessage() {
        return errorMessage;
    }

    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }
}
