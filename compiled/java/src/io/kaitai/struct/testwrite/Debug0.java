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

public class Debug0 extends KaitaiStruct.ReadWrite {
    public Map<String, Integer> _attrStart = new HashMap<String, Integer>();
    public Map<String, Integer> _attrEnd = new HashMap<String, Integer>();
    public Map<String, List<Integer>> _arrStart = new HashMap<String, List<Integer>>();
    public Map<String, List<Integer>> _arrEnd = new HashMap<String, List<Integer>>();

    public static Debug0 fromFile(String fileName) throws IOException {
        return new Debug0(new ByteBufferKaitaiStream(fileName));
    }
    public static String[] _seqFields = new String[] { "one", "arrayOfInts", "_unnamed2" };
    public Debug0() {
        this(null, null, null);
    }

    public Debug0(KaitaiStream _io) {
        this(_io, null, null);
    }

    public Debug0(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public Debug0(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, Debug0 _root) {
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
        _dirty = false;
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.arrayOfInts.size(); i++) {
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU1(this.one);
        for (int i = 0; i < this.arrayOfInts.size(); i++) {
            this._io.writeU1(this.arrayOfInts.get(((Number) (i)).intValue()));
        }
        this._io.writeU1(this._unnamed2);
    }

    public void _check() {
        if (this.arrayOfInts.size() != 3)
            throw new ConsistencyError("array_of_ints", 3, this.arrayOfInts.size());
        for (int i = 0; i < this.arrayOfInts.size(); i++) {
        }
        _dirty = false;
    }
    public int one() { return one; }
    public void setOne(int _v) { _dirty = true; one = _v; }
    public List<Integer> arrayOfInts() { return arrayOfInts; }
    public void setArrayOfInts(List<Integer> _v) { _dirty = true; arrayOfInts = _v; }
    public int _unnamed2() { return _unnamed2; }
    public void set_unnamed2(int _v) { _dirty = true; _unnamed2 = _v; }
    public Debug0 _root() { return _root; }
    public void set_root(Debug0 _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private int one;
    private List<Integer> arrayOfInts;
    private int _unnamed2;
    private Debug0 _root;
    private KaitaiStruct.ReadWrite _parent;
}
