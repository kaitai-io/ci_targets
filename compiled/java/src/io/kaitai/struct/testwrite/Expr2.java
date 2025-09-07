// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;

public class Expr2 extends KaitaiStruct.ReadWrite {
    public static Expr2 fromFile(String fileName) throws IOException {
        return new Expr2(new ByteBufferKaitaiStream(fileName));
    }
    public Expr2() {
        this(null, null, null);
    }

    public Expr2(KaitaiStream _io) {
        this(_io, null, null);
    }

    public Expr2(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public Expr2(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, Expr2 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.str1 = new ModStr(this._io, this, _root);
        this.str1._read();
        this.str2 = new ModStr(this._io, this, _root);
        this.str2._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.str1._fetchInstances();
        this.str2._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        this.str1._write_Seq(this._io);
        this.str2._write_Seq(this._io);
    }

    public void _check() {
        if (!Objects.equals(this.str1._root(), _root()))
            throw new ConsistencyError("str1", _root(), this.str1._root());
        if (!Objects.equals(this.str1._parent(), this))
            throw new ConsistencyError("str1", this, this.str1._parent());
        if (!Objects.equals(this.str2._root(), _root()))
            throw new ConsistencyError("str2", _root(), this.str2._root());
        if (!Objects.equals(this.str2._parent(), this))
            throw new ConsistencyError("str2", this, this.str2._parent());
        _dirty = false;
    }
    public static class ModStr extends KaitaiStruct.ReadWrite {
        public static ModStr fromFile(String fileName) throws IOException {
            return new ModStr(new ByteBufferKaitaiStream(fileName));
        }
        public ModStr() {
            this(null, null, null);
        }

        public ModStr(KaitaiStream _io) {
            this(_io, null, null);
        }

        public ModStr(KaitaiStream _io, Expr2 _parent) {
            this(_io, _parent, null);
        }

        public ModStr(KaitaiStream _io, Expr2 _parent, Expr2 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.lenOrig = this._io.readU2le();
            this.str = new String(this._io.readBytes(lenMod()), StandardCharsets.UTF_8);
            this._raw_rest = this._io.readBytes(3);
            KaitaiStream _io__raw_rest = new ByteBufferKaitaiStream(this._raw_rest);
            this.rest = new Tuple(_io__raw_rest, this, _root);
            this.rest._read();
            _dirty = false;
        }

        public void _fetchInstances() {
            this.rest._fetchInstances();
            char5();
            if (this.char5 != null) {
            }
            tuple5();
            if (this.tuple5 != null) {
                this.tuple5._fetchInstances();
            }
        }

        public void _write_Seq() {
            _assertNotDirty();
            _shouldWriteChar5 = _enabledChar5;
            _shouldWriteTuple5 = _enabledTuple5;
            this._io.writeU2le(this.lenOrig);
            this._io.writeBytes((this.str).getBytes(Charset.forName("UTF-8")));
            final KaitaiStream _io__raw_rest = new ByteBufferKaitaiStream(3);
            this._io.addChildStream(_io__raw_rest);
            {
                long _pos2 = this._io.pos();
                this._io.seek(this._io.pos() + (3));
                final ModStr _this = this;
                _io__raw_rest.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                    @Override
                    protected void write(KaitaiStream parent) {
                        _this._raw_rest = _io__raw_rest.toByteArray();
                        if (_this._raw_rest.length != 3)
                            throw new ConsistencyError("raw(rest)", 3, _this._raw_rest.length);
                        parent.writeBytes(_this._raw_rest);
                    }
                });
            }
            this.rest._write_Seq(_io__raw_rest);
        }

        public void _check() {
            if ((this.str).getBytes(Charset.forName("UTF-8")).length != lenMod())
                throw new ConsistencyError("str", lenMod(), (this.str).getBytes(Charset.forName("UTF-8")).length);
            if (!Objects.equals(this.rest._root(), _root()))
                throw new ConsistencyError("rest", _root(), this.rest._root());
            if (!Objects.equals(this.rest._parent(), this))
                throw new ConsistencyError("rest", this, this.rest._parent());
            if (_enabledChar5) {
                if ((this.char5).getBytes(Charset.forName("ASCII")).length != 1)
                    throw new ConsistencyError("char5", 1, (this.char5).getBytes(Charset.forName("ASCII")).length);
            }
            if (_enabledTuple5) {
                if (!Objects.equals(this.tuple5._root(), _root()))
                    throw new ConsistencyError("tuple5", _root(), this.tuple5._root());
                if (!Objects.equals(this.tuple5._parent(), this))
                    throw new ConsistencyError("tuple5", this, this.tuple5._parent());
            }
            _dirty = false;
        }
        private String char5;
        private boolean _shouldWriteChar5 = false;
        private boolean _enabledChar5 = true;
        public String char5() {
            if (_shouldWriteChar5)
                _writeChar5();
            if (this.char5 != null)
                return this.char5;
            if (!_enabledChar5)
                return null;
            long _pos = this._io.pos();
            this._io.seek(5);
            this.char5 = new String(this._io.readBytes(1), StandardCharsets.US_ASCII);
            this._io.seek(_pos);
            return this.char5;
        }
        public void setChar5(String _v) { _dirty = true; char5 = _v; }
        public void setChar5_Enabled(boolean _v) { _dirty = true; _enabledChar5 = _v; }

        private void _writeChar5() {
            _shouldWriteChar5 = false;
            long _pos = this._io.pos();
            this._io.seek(5);
            this._io.writeBytes((this.char5).getBytes(Charset.forName("ASCII")));
            this._io.seek(_pos);
        }
        private Integer lenMod;
        public Integer lenMod() {
            if (this.lenMod != null)
                return this.lenMod;
            this.lenMod = ((Number) (lenOrig() - 3)).intValue();
            return this.lenMod;
        }
        public void _invalidateLenMod() { this.lenMod = null; }
        private Tuple tuple5;
        private boolean _shouldWriteTuple5 = false;
        private boolean _enabledTuple5 = true;
        public Tuple tuple5() {
            if (_shouldWriteTuple5)
                _writeTuple5();
            if (this.tuple5 != null)
                return this.tuple5;
            if (!_enabledTuple5)
                return null;
            long _pos = this._io.pos();
            this._io.seek(5);
            this.tuple5 = new Tuple(this._io, this, _root);
            this.tuple5._read();
            this._io.seek(_pos);
            return this.tuple5;
        }
        public void setTuple5(Tuple _v) { _dirty = true; tuple5 = _v; }
        public void setTuple5_Enabled(boolean _v) { _dirty = true; _enabledTuple5 = _v; }

        private void _writeTuple5() {
            _shouldWriteTuple5 = false;
            long _pos = this._io.pos();
            this._io.seek(5);
            this.tuple5._write_Seq(this._io);
            this._io.seek(_pos);
        }
        private int lenOrig;
        private String str;
        private Tuple rest;
        private Expr2 _root;
        private Expr2 _parent;
        private byte[] _raw_rest;
        public int lenOrig() { return lenOrig; }
        public void setLenOrig(int _v) { _dirty = true; lenOrig = _v; }
        public String str() { return str; }
        public void setStr(String _v) { _dirty = true; str = _v; }
        public Tuple rest() { return rest; }
        public void setRest(Tuple _v) { _dirty = true; rest = _v; }
        public Expr2 _root() { return _root; }
        public void set_root(Expr2 _v) { _dirty = true; _root = _v; }
        public Expr2 _parent() { return _parent; }
        public void set_parent(Expr2 _v) { _dirty = true; _parent = _v; }
        public byte[] _raw_rest() { return _raw_rest; }
        public void set_raw_Rest(byte[] _v) { _dirty = true; _raw_rest = _v; }
    }
    public static class Tuple extends KaitaiStruct.ReadWrite {
        public static Tuple fromFile(String fileName) throws IOException {
            return new Tuple(new ByteBufferKaitaiStream(fileName));
        }
        public Tuple() {
            this(null, null, null);
        }

        public Tuple(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Tuple(KaitaiStream _io, Expr2.ModStr _parent) {
            this(_io, _parent, null);
        }

        public Tuple(KaitaiStream _io, Expr2.ModStr _parent, Expr2 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.byte0 = this._io.readU1();
            this.byte1 = this._io.readU1();
            this.byte2 = this._io.readU1();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU1(this.byte0);
            this._io.writeU1(this.byte1);
            this._io.writeU1(this.byte2);
        }

        public void _check() {
            _dirty = false;
        }
        private Integer avg;
        public Integer avg() {
            if (this.avg != null)
                return this.avg;
            this.avg = ((Number) ((byte1() + byte2()) / 2)).intValue();
            return this.avg;
        }
        public void _invalidateAvg() { this.avg = null; }
        private int byte0;
        private int byte1;
        private int byte2;
        private Expr2 _root;
        private Expr2.ModStr _parent;
        public int byte0() { return byte0; }
        public void setByte0(int _v) { _dirty = true; byte0 = _v; }
        public int byte1() { return byte1; }
        public void setByte1(int _v) { _dirty = true; byte1 = _v; }
        public int byte2() { return byte2; }
        public void setByte2(int _v) { _dirty = true; byte2 = _v; }
        public Expr2 _root() { return _root; }
        public void set_root(Expr2 _v) { _dirty = true; _root = _v; }
        public Expr2.ModStr _parent() { return _parent; }
        public void set_parent(Expr2.ModStr _v) { _dirty = true; _parent = _v; }
    }
    private Integer str1Avg;
    public Integer str1Avg() {
        if (this.str1Avg != null)
            return this.str1Avg;
        this.str1Avg = ((Number) (str1().rest().avg())).intValue();
        return this.str1Avg;
    }
    public void _invalidateStr1Avg() { this.str1Avg = null; }
    private Integer str1Byte1;
    public Integer str1Byte1() {
        if (this.str1Byte1 != null)
            return this.str1Byte1;
        this.str1Byte1 = ((Number) (str1().rest().byte1())).intValue();
        return this.str1Byte1;
    }
    public void _invalidateStr1Byte1() { this.str1Byte1 = null; }
    private String str1Char5;
    public String str1Char5() {
        if (this.str1Char5 != null)
            return this.str1Char5;
        this.str1Char5 = str1().char5();
        return this.str1Char5;
    }
    public void _invalidateStr1Char5() { this.str1Char5 = null; }
    private Integer str1Len;
    public Integer str1Len() {
        if (this.str1Len != null)
            return this.str1Len;
        this.str1Len = ((Number) (str1().str().length())).intValue();
        return this.str1Len;
    }
    public void _invalidateStr1Len() { this.str1Len = null; }
    private Integer str1LenMod;
    public Integer str1LenMod() {
        if (this.str1LenMod != null)
            return this.str1LenMod;
        this.str1LenMod = ((Number) (str1().lenMod())).intValue();
        return this.str1LenMod;
    }
    public void _invalidateStr1LenMod() { this.str1LenMod = null; }
    private Tuple str1Tuple5;
    public Tuple str1Tuple5() {
        if (this.str1Tuple5 != null)
            return this.str1Tuple5;
        this.str1Tuple5 = str1().tuple5();
        return this.str1Tuple5;
    }
    public void _invalidateStr1Tuple5() { this.str1Tuple5 = null; }
    private Tuple str2Tuple5;
    public Tuple str2Tuple5() {
        if (this.str2Tuple5 != null)
            return this.str2Tuple5;
        this.str2Tuple5 = str2().tuple5();
        return this.str2Tuple5;
    }
    public void _invalidateStr2Tuple5() { this.str2Tuple5 = null; }
    private ModStr str1;
    private ModStr str2;
    private Expr2 _root;
    private KaitaiStruct.ReadWrite _parent;
    public ModStr str1() { return str1; }
    public void setStr1(ModStr _v) { _dirty = true; str1 = _v; }
    public ModStr str2() { return str2; }
    public void setStr2(ModStr _v) { _dirty = true; str2 = _v; }
    public Expr2 _root() { return _root; }
    public void set_root(Expr2 _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
