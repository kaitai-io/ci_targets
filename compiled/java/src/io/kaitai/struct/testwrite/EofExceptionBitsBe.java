// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class EofExceptionBitsBe extends KaitaiStruct.ReadWrite {
    public Map<String, Integer> _attrStart = new HashMap<String, Integer>();
    public Map<String, Integer> _attrEnd = new HashMap<String, Integer>();
    public Map<String, List<Integer>> _arrStart = new HashMap<String, List<Integer>>();
    public Map<String, List<Integer>> _arrEnd = new HashMap<String, List<Integer>>();

    public static EofExceptionBitsBe fromFile(String fileName) throws IOException {
        return new EofExceptionBitsBe(new ByteBufferKaitaiStream(fileName));
    }
    public static String[] _seqFields = new String[] { "preBits", "failBits" };
    public EofExceptionBitsBe() {
        this(null, null, null);
    }

    public EofExceptionBitsBe(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EofExceptionBitsBe(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public EofExceptionBitsBe(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, EofExceptionBitsBe _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        _attrStart.put("preBits", this._io.pos());
        this.preBits = this._io.readBitsIntBe(7);
        _attrEnd.put("preBits", this._io.pos());
        _attrStart.put("failBits", this._io.pos());
        this.failBits = this._io.readBitsIntBe(18);
        _attrEnd.put("failBits", this._io.pos());
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeBitsIntBe(7, this.preBits);
        this._io.writeBitsIntBe(18, this.failBits);
    }

    public void _check() {
        _dirty = false;
    }
    public long preBits() { return preBits; }
    public void setPreBits(long _v) { _dirty = true; preBits = _v; }
    public long failBits() { return failBits; }
    public void setFailBits(long _v) { _dirty = true; failBits = _v; }
    public EofExceptionBitsBe _root() { return _root; }
    public void set_root(EofExceptionBitsBe _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private long preBits;
    private long failBits;
    private EofExceptionBitsBe _root;
    private KaitaiStruct.ReadWrite _parent;
}
