
CREATE OR REPLACE FUNCTION __API_CATALOG_SCHEMA__.query_match_support(internal)
 RETURNS internal
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS 'MODULE_PATHNAME', $$query_match_support$$;

CREATE OR REPLACE FUNCTION __API_CATALOG_SCHEMA__.bson_query_match(__CORE_SCHEMA__.bson, __CORE_SCHEMA__.bson)
 RETURNS bool
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
 SUPPORT __API_CATALOG_SCHEMA__.query_match_support
AS 'MODULE_PATHNAME', $function$bson_query_match$function$;

CREATE OR REPLACE FUNCTION __API_CATALOG_SCHEMA__.bson_true_match(__CORE_SCHEMA__.bson)
 RETURNS bool
 LANGUAGE c
 IMMUTABLE PARALLEL SAFE STRICT
AS 'MODULE_PATHNAME', $function$bson_true_match$function$;