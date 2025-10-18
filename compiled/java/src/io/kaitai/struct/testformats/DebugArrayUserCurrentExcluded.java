// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.ArrayList;

public class DebugArrayUserCurrentExcluded extends KaitaiStruct.ReadOnly {
    public Map<String, Integer> _attrStart = new HashMap<String, Integer>();
    public Map<String, Integer> _attrEnd = new HashMap<String, Integer>();
    public Map<String, List<Integer>> _arrStart = new HashMap<String, List<Integer>>();
    public Map<String, List<Integer>> _arrEnd = new HashMap<String, List<Integer>>();

    public static DebugArrayUserCurrentExcluded fromFile(String fileName) throws IOException {
        return new DebugArrayUserCurrentExcluded(new ByteBufferKaitaiStream(fileName));
    }
    public static String[] _seqFields = new String[] { "arrayOfCats" };

    public DebugArrayUserCurrentExcluded(KaitaiStream _io) {
        this(_io, null, null);
    }

    public DebugArrayUserCurrentExcluded(KaitaiStream _io, KaitaiStruct.ReadOnly _parent) {
        this(_io, _parent, null);
    }

    public DebugArrayUserCurrentExcluded(KaitaiStream _io, KaitaiStruct.ReadOnly _parent, DebugArrayUserCurrentExcluded _root) {
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
    public static class Cat extends KaitaiStruct.ReadOnly {
        public Map<String, Integer> _attrStart = new HashMap<String, Integer>();
        public Map<String, Integer> _attrEnd = new HashMap<String, Integer>();
        public Map<String, List<Integer>> _arrStart = new HashMap<String, List<Integer>>();
        public Map<String, List<Integer>> _arrEnd = new HashMap<String, List<Integer>>();

        public static Cat fromFile(String fileName) throws IOException {
            return new Cat(new ByteBufferKaitaiStream(fileName));
        }
        public static String[] _seqFields = new String[] { "meow" };

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
        public byte[] meow() { return meow; }
        public DebugArrayUserCurrentExcluded _root() { return _root; }
        public DebugArrayUserCurrentExcluded _parent() { return _parent; }
        private byte[] meow;
        private DebugArrayUserCurrentExcluded _root;
        private DebugArrayUserCurrentExcluded _parent;
    }
    public List<Cat> arrayOfCats() { return arrayOfCats; }
    public DebugArrayUserCurrentExcluded _root() { return _root; }
    public KaitaiStruct.ReadOnly _parent() { return _parent; }
    private List<Cat> arrayOfCats;
    private DebugArrayUserCurrentExcluded _root;
    private KaitaiStruct.ReadOnly _parent;
}
