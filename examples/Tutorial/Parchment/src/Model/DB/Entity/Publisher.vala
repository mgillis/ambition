using Almanna;

namespace Parchment.Model.DB.Entity {
	
	/**
	 * Almanna Entity for table "publisher".
	 * Generated by almanna-generate.
	 */
	public class Publisher : Almanna.Entity {
		public override string entity_name { owned get { return "publisher"; } }
		public int publisher_id { get; set; }
		public string username { get; set; }
		public string password_hash { get; set; }
		public string display_name { get; set; }
		public DateTime date_created { get; set; }
		public DateTime date_modified { get; set; }
		public DateTime date_login { get; set; }
		
		public override void register_entity() {
			add_column( new Column<int>.with_name_type( "publisher_id", "int4" ) );
			columns["publisher_id"].size = 4;
			columns["publisher_id"].is_sequenced = true;
			
			add_column( new Column<string>.with_name_type( "username", "varchar" ) );
			columns["username"].is_nullable = true;
			
			add_column( new Column<string>.with_name_type( "password_hash", "bpchar" ) );
			columns["password_hash"].is_nullable = true;
			
			add_column( new Column<string>.with_name_type( "display_name", "varchar" ) );
			columns["display_name"].is_nullable = true;
			
			add_column( new Column<DateTime>.with_name_type( "date_created", "timestamp" ) );
			columns["date_created"].is_nullable = true;
			
			add_column( new Column<DateTime>.with_name_type( "date_modified", "timestamp" ) );
			columns["date_modified"].is_nullable = true;
			
			add_column( new Column<DateTime>.with_name_type( "date_login", "timestamp" ) );
			columns["date_login"].is_nullable = true;
			
			try {
				set_primary_key("publisher_id");
			} catch (EntityError e) {
				stderr.printf( "Error adding primary key to entity: %s\n", e.message );
			}
		}
	}
}
