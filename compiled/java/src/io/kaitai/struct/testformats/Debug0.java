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

public class Debug0 extends KaitaiStruct.ReadOnly {
    public Map<String, Integer> _attrStart = new HashMap<String, Integer>();
    public Map<String, Integer> _attrEnd = new HashMap<String, Integer>();
    public Map<String, List<Integer>> _arrStart = new HashMap<String, List<Integer>>();
    public Map<String, List<Integer>> _arrEnd = new HashMap<String, List<Integer>>();

    public static Debug0 fromFile(String fileName) throws IOException {
        return new Debug0(new ByteBufferKaitaiStream(fileName));
    }
    public static String[] _seqFields = new String[] { "one", "arrayOfInts", "_unnamed2" };

    public Debug0(KaitaiStream _io) {
        this(_io, null, null);
    }

    public Debug0(KaitaiStream _io, KaitaiStruct.ReadOnly _parent) {
        this(_io, _parent, null);
    }

    public Debug0(KaitaiStream _io, KaitaiStruct.ReadOnly _parent, Debug0 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        _attrStart.put("one", this._io.pos());
        this.one = this._io.readU1();
        _attrEnd.put("one", this._io.pos());
        _attrStart.put("arrayOfInts", this._io.pos());
        this.arrayOfInts = new ArrayList<Integer>();
        for (int i = 0; i < 3; i++) {
            {
                List<Integer> _posList = _arrStart.get("arrayOfInts");
                if (_posList == null) {
                    _posList = new ArrayList<Integer>();
                    _arrStart.put("arrayOfInts", _posList);
                }
                _posList.add(this._io.pos());
            }
            this.arrayOfInts.add(this._io.readU1());
            {
                List<Integer> _posList = _arrEnd.get("arrayOfInts");
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

    public void _fetchInstances() {
        for (int i = 0; i < this.arrayOfInts.size(); i++) {
        }
    }
    public int one() { return one; }
    public List<Integer> arrayOfInts() { return arrayOfInts; }
    public int _unnamed2() { return _unnamed2; }
    public Debug0 _root() { return _root; }
    public KaitaiStruct.ReadOnly _parent() { return _parent; }
    private int one;
    private List<Integer> arrayOfInts;
    private int _unnamed2;
    private Debug0 _root;
    private KaitaiStruct.ReadOnly _parent;
}
