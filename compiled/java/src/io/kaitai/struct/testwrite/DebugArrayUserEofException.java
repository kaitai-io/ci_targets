// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.ArrayList;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;

public class DebugArrayUserEofException extends KaitaiStruct.ReadWrite {
    public Map<String, Integer> _attrStart = new HashMap<String, Integer>();
    public Map<String, Integer> _attrEnd = new HashMap<String, Integer>();
    public Map<String, List<Integer>> _arrStart = new HashMap<String, List<Integer>>();
    public Map<String, List<Integer>> _arrEnd = new HashMap<String, List<Integer>>();

    public static DebugArrayUserEofException fromFile(String fileName) throws IOException {
        return new DebugArrayUserEofException(new ByteBufferKaitaiStream(fileName));
    }
    public static String[] _seqFields = new String[] { "oneCat", "arrayOfCats" };
    public DebugArrayUserEofException() {
        this(null, null, null);
    }

    public DebugArrayUserEofException(KaitaiStream _io) {
        this(_io, null, null);
    }

    public DebugArrayUserEofException(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public DebugArrayUserEofException(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, DebugArrayUserEofException _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        _attrStart.put("oneCat", this._io.pos());
        this.oneCat = new Cat(this._io, this, _root);
        this.oneCat._read();
        _attrEnd.put("oneCat", this._io.pos());
        _attrStart.put("arrayOfCats", this._io.pos());
        this.arrayOfCats = new ArrayList<Cat>();
        for (int i = 0; i < 3; i++) {
            {
                List<Integer> _posList = _arrStart.get("arrayOfCats");
                if (_posList == null) {
                    _posList = new ArrayList<Integer>();
                    _arrStart.put("arrayOfCats", _posList);
                }
                _posList.add(this._io.pos());
            }
            Cat _t_arrayOfCats = new Cat(this._io, this, _root);
            try {
                _t_arrayOfCats._read();
            } finally {
                this.arrayOfCats.add(_t_arrayOfCats);
            }
            {
                List<Integer> _posList = _arrEnd.get("arrayOfCats");
                if (_posList == null) {
                    _posList = new ArrayList<Integer>();
                    _arrEnd.put("arrayOfCats", _posList);
                }
                _posList.add(this._io.pos());
            }
        }
        _attrEnd.put("arrayOfCats", this._io.pos());
        _dirty = false;
    }

    public void _fetchInstances() {
        this.oneCat._fetchInstances();
        for (int i = 0; i < this.arrayOfCats.size(); i++) {
            this.arrayOfCats.get(((Number) (i)).intValue())._fetchInstances();
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        this.oneCat._write_Seq(this._io);
        for (int i = 0; i < this.arrayOfCats.size(); i++) {
            this.arrayOfCats.get(((Number) (i)).intValue())._write_Seq(this._io);
        }
    }

    public void _check() {
        if (!Objects.equals(this.oneCat._root(), _root()))
            throw new ConsistencyError("one_cat", _root(), this.oneCat._root());
        if (!Objects.equals(this.oneCat._parent(), this))
            throw new ConsistencyError("one_cat", this, this.oneCat._parent());
        if (this.arrayOfCats.size() != 3)
            throw new ConsistencyError("array_of_cats", 3, this.arrayOfCats.size());
        for (int i = 0; i < this.arrayOfCats.size(); i++) {
            if (!Objects.equals(this.arrayOfCats.get(((Number) (i)).intValue())._root(), _root()))
                throw new ConsistencyError("array_of_cats", _root(), this.arrayOfCats.get(((Number) (i)).intValue())._root());
            if (!Objects.equals(this.arrayOfCats.get(((Number) (i)).intValue())._parent(), this))
                throw new ConsistencyError("array_of_cats", this, this.arrayOfCats.get(((Number) (i)).intValue())._parent());
        }
        _dirty = false;
    }
    public static class Cat extends KaitaiStruct.ReadWrite {
        public Map<String, Integer> _attrStart = new HashMap<String, Integer>();
        public Map<String, Integer> _attrEnd = new HashMap<String, Integer>();
        public Map<String, List<Integer>> _arrStart = new HashMap<String, List<Integer>>();
        public Map<String, List<Integer>> _arrEnd = new HashMap<String, List<Integer>>();

        public static Cat fromFile(String fileName) throws IOException {
            return new Cat(new ByteBufferKaitaiStream(fileName));
        }
        public static String[] _seqFields = new String[] { "meow", "chirp" };
        public Cat() {
            this(null, null, null);
        }

        public Cat(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Cat(KaitaiStream _io, DebugArrayUserEofException _parent) {
            this(_io, _parent, null);
        }

        public Cat(KaitaiStream _io, DebugArrayUserEofException _parent, DebugArrayUserEofException _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            _attrStart.put("meow", this._io.pos());
            this.meow = this._io.readU1();
            _attrEnd.put("meow", this._io.pos());
            _attrStart.put("chirp", this._io.pos());
            this.chirp = this._io.readU1();
            _attrEnd.put("chirp", this._io.pos());
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU1(this.meow);
            this._io.writeU1(this.chirp);
        }

        public void _check() {
            _dirty = false;
        }
        public int meow() { return meow; }
        public void setMeow(int _v) { _dirty = true; meow = _v; }
        public int chirp() { return chirp; }
        public void setChirp(int _v) { _dirty = true; chirp = _v; }
        public DebugArrayUserEofException _root() { return _root; }
        public void set_root(DebugArrayUserEofException _v) { _dirty = true; _root = _v; }
        public DebugArrayUserEofException _parent() { return _parent; }
        public void set_parent(DebugArrayUserEofException _v) { _dirty = true; _parent = _v; }
        private int meow;
        private int chirp;
        private DebugArrayUserEofException _root;
        private DebugArrayUserEofException _parent;
    }
    public Cat oneCat() { return oneCat; }
    public void setOneCat(Cat _v) { _dirty = true; oneCat = _v; }
    public List<Cat> arrayOfCats() { return arrayOfCats; }
    public void setArrayOfCats(List<Cat> _v) { _dirty = true; arrayOfCats = _v; }
    public DebugArrayUserEofException _root() { return _root; }
    public void set_root(DebugArrayUserEofException _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private Cat oneCat;
    private List<Cat> arrayOfCats;
    private DebugArrayUserEofException _root;
    private KaitaiStruct.ReadWrite _parent;
}
