package cn.sh.sbl.hotel.beans;

import java.util.ArrayList;
import java.util.List;

public class FilmDirectorExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table film_director
     *
     * @mbggenerated Mon Nov 25 11:20:37 CST 2013
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table film_director
     *
     * @mbggenerated Mon Nov 25 11:20:37 CST 2013
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table film_director
     *
     * @mbggenerated Mon Nov 25 11:20:37 CST 2013
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table film_director
     *
     * @mbggenerated Mon Nov 25 11:20:37 CST 2013
     */
    public FilmDirectorExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table film_director
     *
     * @mbggenerated Mon Nov 25 11:20:37 CST 2013
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table film_director
     *
     * @mbggenerated Mon Nov 25 11:20:37 CST 2013
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table film_director
     *
     * @mbggenerated Mon Nov 25 11:20:37 CST 2013
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table film_director
     *
     * @mbggenerated Mon Nov 25 11:20:37 CST 2013
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table film_director
     *
     * @mbggenerated Mon Nov 25 11:20:37 CST 2013
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table film_director
     *
     * @mbggenerated Mon Nov 25 11:20:37 CST 2013
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table film_director
     *
     * @mbggenerated Mon Nov 25 11:20:37 CST 2013
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table film_director
     *
     * @mbggenerated Mon Nov 25 11:20:37 CST 2013
     */
    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table film_director
     *
     * @mbggenerated Mon Nov 25 11:20:37 CST 2013
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table film_director
     *
     * @mbggenerated Mon Nov 25 11:20:37 CST 2013
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table film_director
     *
     * @mbggenerated Mon Nov 25 11:20:37 CST 2013
     */
    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andDirectorIdIsNull() {
            addCriterion("director_id is null");
            return (Criteria) this;
        }

        public Criteria andDirectorIdIsNotNull() {
            addCriterion("director_id is not null");
            return (Criteria) this;
        }

        public Criteria andDirectorIdEqualTo(Integer value) {
            addCriterion("director_id =", value, "directorId");
            return (Criteria) this;
        }

        public Criteria andDirectorIdNotEqualTo(Integer value) {
            addCriterion("director_id <>", value, "directorId");
            return (Criteria) this;
        }

        public Criteria andDirectorIdGreaterThan(Integer value) {
            addCriterion("director_id >", value, "directorId");
            return (Criteria) this;
        }

        public Criteria andDirectorIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("director_id >=", value, "directorId");
            return (Criteria) this;
        }

        public Criteria andDirectorIdLessThan(Integer value) {
            addCriterion("director_id <", value, "directorId");
            return (Criteria) this;
        }

        public Criteria andDirectorIdLessThanOrEqualTo(Integer value) {
            addCriterion("director_id <=", value, "directorId");
            return (Criteria) this;
        }

        public Criteria andDirectorIdIn(List<Integer> values) {
            addCriterion("director_id in", values, "directorId");
            return (Criteria) this;
        }

        public Criteria andDirectorIdNotIn(List<Integer> values) {
            addCriterion("director_id not in", values, "directorId");
            return (Criteria) this;
        }

        public Criteria andDirectorIdBetween(Integer value1, Integer value2) {
            addCriterion("director_id between", value1, value2, "directorId");
            return (Criteria) this;
        }

        public Criteria andDirectorIdNotBetween(Integer value1, Integer value2) {
            addCriterion("director_id not between", value1, value2, "directorId");
            return (Criteria) this;
        }

        public Criteria andFilmIdIsNull() {
            addCriterion("film_id is null");
            return (Criteria) this;
        }

        public Criteria andFilmIdIsNotNull() {
            addCriterion("film_id is not null");
            return (Criteria) this;
        }

        public Criteria andFilmIdEqualTo(String value) {
            addCriterion("film_id =", value, "filmId");
            return (Criteria) this;
        }

        public Criteria andFilmIdNotEqualTo(String value) {
            addCriterion("film_id <>", value, "filmId");
            return (Criteria) this;
        }

        public Criteria andFilmIdGreaterThan(String value) {
            addCriterion("film_id >", value, "filmId");
            return (Criteria) this;
        }

        public Criteria andFilmIdGreaterThanOrEqualTo(String value) {
            addCriterion("film_id >=", value, "filmId");
            return (Criteria) this;
        }

        public Criteria andFilmIdLessThan(String value) {
            addCriterion("film_id <", value, "filmId");
            return (Criteria) this;
        }

        public Criteria andFilmIdLessThanOrEqualTo(String value) {
            addCriterion("film_id <=", value, "filmId");
            return (Criteria) this;
        }

        public Criteria andFilmIdLike(String value) {
            addCriterion("film_id like", value, "filmId");
            return (Criteria) this;
        }

        public Criteria andFilmIdNotLike(String value) {
            addCriterion("film_id not like", value, "filmId");
            return (Criteria) this;
        }

        public Criteria andFilmIdIn(List<String> values) {
            addCriterion("film_id in", values, "filmId");
            return (Criteria) this;
        }

        public Criteria andFilmIdNotIn(List<String> values) {
            addCriterion("film_id not in", values, "filmId");
            return (Criteria) this;
        }

        public Criteria andFilmIdBetween(String value1, String value2) {
            addCriterion("film_id between", value1, value2, "filmId");
            return (Criteria) this;
        }

        public Criteria andFilmIdNotBetween(String value1, String value2) {
            addCriterion("film_id not between", value1, value2, "filmId");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table film_director
     *
     * @mbggenerated do_not_delete_during_merge Mon Nov 25 11:20:37 CST 2013
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table film_director
     *
     * @mbggenerated Mon Nov 25 11:20:37 CST 2013
     */
    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}