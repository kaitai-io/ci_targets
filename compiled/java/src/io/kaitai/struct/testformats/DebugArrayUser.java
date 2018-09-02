// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class DebugArrayUser extends KaitaiStruct {
    public Map<String, Integer> _attrStart = new HashMap<String, Integer>();
    public Map<String, Integer> _attrEnd = new HashMap<String, Integer>();
    public Map<String, ArrayList<Integer>> _arrStart = new HashMap<String, ArrayList<Integer>>();
    public Map<String, ArrayList<Integer>> _arrEnd = new HashMap<String, ArrayList<Integer>>();

    public static DebugArrayUser fromFile(String fileName) throws IOException {
        return new DebugArrayUser(new ByteBufferKaitaiStream(fileName));
    }
    public static String[] _seqFields = new String[] { "oneCat", "arrayOfCats" };

    public DebugArrayUser(KaitaiStream _io) {
        this(_io, null, null);
    }

    public DebugArrayUser(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public DebugArrayUser(KaitaiStream _io, KaitaiStruct _parent, DebugArrayUser _root) {
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
        arrayOfCats = new ArrayList<Cat>((int) (3));
        for (int i = 0; i < 3; i++) {
            {
                ArrayList<Integer> _posList = _arrStart.get("arrayOfCats");
                if (_posList == null) {
                    _posList = new ArrayList<Integer>();
                    _arrStart.put("arrayOfCats", _posList);
                }
                _posList.add(this._io.pos());
            }
            Cat _t_arrayOfCats = new Cat(this._io, this, _root);
            _t_arrayOfCats._read();
            this.arrayOfCats.add(_t_arrayOfCats);
            {
                ArrayList<Integer> _posList = _arrEnd.get("arrayOfCats");
                if (_posList == null) {
                    _posList = new ArrayList<Integer>();
                    _arrEnd.put("arrayOfCats", _posList);
                }
                _posList.add(this._io.pos());
            }
        }
        _attrEnd.put("arrayOfCats", this._io.pos());
    }
    public static class Cat extends KaitaiStruct {
        public Map<String, Integer> _attrStart = new HashMap<String, Integer>();
        public Map<String, Integer> _attrEnd = new HashMap<String, Integer>();
        public Map<String, ArrayList<Integer>> _arrStart = new HashMap<String, ArrayList<Integer>>();
        public Map<String, ArrayList<Integer>> _arrEnd = new HashMap<String, ArrayList<Integer>>();

        public static Cat fromFile(String fileName) throws IOException {
            return new Cat(new ByteBufferKaitaiStream(fileName));
        }
        public static String[] _seqFields = new String[] { "meow" };

        public Cat(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Cat(KaitaiStream _io, DebugArrayUser _parent) {
            this(_io, _parent, null);
        }

        public Cat(KaitaiStream _io, DebugArrayUser _parent, DebugArrayUser _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            _attrStart.put("meow", this._io.pos());
            this.meow = this._io.readU1();
            _attrEnd.put("meow", this._io.pos());
        }
        private int meow;
        private DebugArrayUser _root;
        private DebugArrayUser _parent;
        public int meow() { return meow; }
        public DebugArrayUser _root() { return _root; }
        public DebugArrayUser _parent() { return _parent; }
    }
    private Cat oneCat;
    private ArrayList<Cat> arrayOfCats;
    private DebugArrayUser _root;
    private KaitaiStruct _parent;
    public Cat oneCat() { return oneCat; }
    public ArrayList<Cat> arrayOfCats() { return arrayOfCats; }
    public DebugArrayUser _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
