package cn.sh.sbl.hotel.beans;

import java.io.Serializable;

public class FilmLanguageKey implements Serializable {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column film_language.category_language
     *
     * @mbggenerated Mon Nov 25 11:20:37 CST 2013
     */
    private Integer categoryLanguage;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column film_language.film_id
     *
     * @mbggenerated Mon Nov 25 11:20:37 CST 2013
     */
    private String filmId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table film_language
     *
     * @mbggenerated Mon Nov 25 11:20:37 CST 2013
     */
    private static final long serialVersionUID = 1L;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column film_language.category_language
     *
     * @return the value of film_language.category_language
     *
     * @mbggenerated Mon Nov 25 11:20:37 CST 2013
     */
    public Integer getCategoryLanguage() {
        return categoryLanguage;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column film_language.category_language
     *
     * @param categoryLanguage the value for film_language.category_language
     *
     * @mbggenerated Mon Nov 25 11:20:37 CST 2013
     */
    public void setCategoryLanguage(Integer categoryLanguage) {
        this.categoryLanguage = categoryLanguage;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column film_language.film_id
     *
     * @return the value of film_language.film_id
     *
     * @mbggenerated Mon Nov 25 11:20:37 CST 2013
     */
    public String getFilmId() {
        return filmId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column film_language.film_id
     *
     * @param filmId the value for film_language.film_id
     *
     * @mbggenerated Mon Nov 25 11:20:37 CST 2013
     */
    public void setFilmId(String filmId) {
        this.filmId = filmId;
    }
}