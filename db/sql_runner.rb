require 'pg'

class SQLRunner

  def self.run(sql, tag, values)
    db = PG.connect({dbname: 'pizza_shop', host: 'localhost'})
    db.prepare(tag, sql)
    result = db.exec_prepared(tag,values)
    db.close
    return result
  end

end
