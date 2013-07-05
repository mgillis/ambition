using Almanna;
namespace Parchment.Model.DB {
	/**
	 * Almanna loader.
	 * Generated by almanna-generate.
	 */
	
	public class AlmannaLoader : Object,Almanna.Loader {
		public void load_entities() {
			Repo.add_entity( typeof(Parchment.Model.DB.Implementation.Entry) );
			Repo.add_entity( typeof(Parchment.Model.DB.Implementation.EntryTag) );
			Repo.add_entity( typeof(Parchment.Model.DB.Implementation.Publisher) );
			Repo.add_entity( typeof(Parchment.Model.DB.Implementation.Session) );
			Repo.add_entity( typeof(Parchment.Model.DB.Implementation.Tag) );
		}
	}
}
