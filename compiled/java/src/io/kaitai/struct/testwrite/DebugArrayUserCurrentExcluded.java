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
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;

public class DebugArrayUserCurrentExcluded extends KaitaiStruct.ReadWrite {
    public Map<String, Integer> _attrStart = new HashMap<String, Integer>();
    public Map<String, Integer> _attrEnd = new HashMap<String, Integer>();
    public Map<String, List<Integer>> _arrStart = new HashMap<String, List<Integer>>();
    public Map<String, List<Integer>> _arrEnd = new HashMap<String, List<Integer>>();

    public static DebugArrayUserCurrentExcluded fromFile(String fileName) throws IOException {
        return new DebugArrayUserCurrentExcluded(new ByteBufferKaitaiStream(fileName));
    }
    public static String[] _seqFields = new String[] { "arrayOfCats" };
    public DebugArrayUserCurrentExcluded() {
        this(null, null, null);
    }

    public DebugArrayUserCurrentExcluded(KaitaiStream _io) {
        this(_io, null, null);
    }

    public DebugArrayUserCurrentExcluded(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public DebugArrayUserCurrentExcluded(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, DebugArrayUserCurrentExcluded _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
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
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.arrayOfCats.size(); i++) {
            this.arrayOfCats.get(((Number) (i)).intValue())._fetchInstances();
        }
    }

    public void _write_Seq() {
        for (int i = 0; i < this.arrayOfCats.size(); i++) {
            this.arrayOfCats.get(((Number) (i)).intValue())._write_Seq(this._io);
        }
    }

    public void _check() {
        if (this.arrayOfCats.size() != 3)
            throw new ConsistencyError("array_of_cats", this.arrayOfCats.size(), 3);
        for (int i = 0; i < this.arrayOfCats.size(); i++) {
            if (!Objects.equals(this.arrayOfCats.get(((Number) (i)).intValue())._root(), _root()))
                throw new ConsistencyError("array_of_cats", this.arrayOfCats.get(((Number) (i)).intValue())._root(), _root());
            if (!Objects.equals(this.arrayOfCats.get(((Number) (i)).intValue())._parent(), this))
                throw new ConsistencyError("array_of_cats", this.arrayOfCats.get(((Number) (i)).intValue())._parent(), this);
        }
    }
    public static class Cat extends KaitaiStruct.ReadWrite {
        public Map<String, Integer> _attrStart = new HashMap<String, Integer>();
        public Map<String, Integer> _attrEnd = new HashMap<String, Integer>();
        public Map<String, List<Integer>> _arrStart = new HashMap<String, List<Integer>>();
        public Map<String, List<Integer>> _arrEnd = new HashMap<String, List<Integer>>();

        public static Cat fromFile(String fileName) throws IOException {
            return new Cat(new ByteBufferKaitaiStream(fileName));
        }
        public static String[] _seqFields = new String[] { "meow" };
        public Cat() {
            this(null, null, null);
        }

        public Cat(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Cat(KaitaiStream _io, DebugArrayUserCurrentExcluded _parent) {
            this(_io, _parent, null);
        }

        public Cat(KaitaiStream _io, DebugArrayUserCurrentExcluded _parent, DebugArrayUserCurrentExcluded _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            _attrStart.put("meow", this._io.pos());
            this.meow = this._io.readBytes(3 - _parent().arrayOfCats().size());
            _attrEnd.put("meow", this._io.pos());
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            this._io.writeBytes(this.meow);
        }

        public void _check() {
            if (this.meow.length != 3 - _parent().arrayOfCats().size())
                throw new ConsistencyError("meow", this.meow.length, 3 - _parent().arrayOfCats().size());
        }
        private byte[] meow;
        private DebugArrayUserCurrentExcluded _root;
        private DebugArrayUserCurrentExcluded _parent;
        public byte[] meow() { return meow; }
        public void setMeow(byte[] _v) { meow = _v; }
        public DebugArrayUserCurrentExcluded _root() { return _root; }
        public void set_root(DebugArrayUserCurrentExcluded _v) { _root = _v; }
        public DebugArrayUserCurrentExcluded _parent() { return _parent; }
        public void set_parent(DebugArrayUserCurrentExcluded _v) { _parent = _v; }
    }
    private List<Cat> arrayOfCats;
    private DebugArrayUserCurrentExcluded _root;
    private KaitaiStruct.ReadWrite _parent;
    public List<Cat> arrayOfCats() { return arrayOfCats; }
    public void setArrayOfCats(List<Cat> _v) { arrayOfCats = _v; }
    public DebugArrayUserCurrentExcluded _root() { return _root; }
    public void set_root(DebugArrayUserCurrentExcluded _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
