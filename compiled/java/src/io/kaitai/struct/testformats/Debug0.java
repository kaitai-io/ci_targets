// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class Debug0 extends KaitaiStruct {
    public Map<String, Integer> _attrStart = new HashMap<String, Integer>();
    public Map<String, Integer> _attrEnd = new HashMap<String, Integer>();
    public Map<String, ArrayList<Integer>> _arrStart = new HashMap<String, ArrayList<Integer>>();
    public Map<String, ArrayList<Integer>> _arrEnd = new HashMap<String, ArrayList<Integer>>();

    public static Debug0 fromFile(String fileName) throws IOException {
        return new Debug0(new KaitaiStream(fileName));
    }
    public static String[] _seqFields = new String[] { "one", "arrayOfInts", "_unnamed2" };

    public Debug0(KaitaiStream _io) {
        this(_io, null, null);
    }

    public Debug0(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public Debug0(KaitaiStream _io, KaitaiStruct _parent, Debug0 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        _attrStart.put("one", this._io.pos());
        this.one = this._io.readU1();
        _attrEnd.put("one", this._io.pos());
        _attrStart.put("arrayOfInts", this._io.pos());
        arrayOfInts = new ArrayList<Integer>((int) (3));
        for (int i = 0; i < 3; i++) {
            {
                ArrayList<Integer> _posList = _arrStart.get("arrayOfInts");
                if (_posList == null) {
                    _posList = new ArrayList<Integer>();
                    _arrStart.put("arrayOfInts", _posList);
                }
                _posList.add(this._io.pos());
            }
            this.arrayOfInts.add(this._io.readU1());
            {
                ArrayList<Integer> _posList = _arrEnd.get("arrayOfInts");
                if (_posList == null) {
                    _posList = new ArrayList<Integer>();
                    _arrEnd.put("arrayOfInts", _posList);
                }
                _posList.add(this._io.pos());
            }
        }
        _attrEnd.put("arrayOfInts", this._io.pos());
        _attrStart.put("_unnamed2", this._io.pos());
        this._unnamed2 = this._io.readU1();
        _attrEnd.put("_unnamed2", this._io.pos());
    }
    private int one;
    private ArrayList<Integer> arrayOfInts;
    private int _unnamed2;
    private Debug0 _root;
    private KaitaiStruct _parent;
    public int one() { return one; }
    public ArrayList<Integer> arrayOfInts() { return arrayOfInts; }
    public int _unnamed2() { return _unnamed2; }
    public Debug0 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
