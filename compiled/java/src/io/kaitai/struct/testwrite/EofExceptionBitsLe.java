// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class EofExceptionBitsLe extends KaitaiStruct.ReadWrite {
    public Map<String, Integer> _attrStart = new HashMap<String, Integer>();
    public Map<String, Integer> _attrEnd = new HashMap<String, Integer>();
    public Map<String, List<Integer>> _arrStart = new HashMap<String, List<Integer>>();
    public Map<String, List<Integer>> _arrEnd = new HashMap<String, List<Integer>>();

    public static EofExceptionBitsLe fromFile(String fileName) throws IOException {
        return new EofExceptionBitsLe(new ByteBufferKaitaiStream(fileName));
    }
    public static String[] _seqFields = new String[] { "preBits", "failBits" };
    public EofExceptionBitsLe() {
        this(null, null, null);
    }

    public EofExceptionBitsLe(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EofExceptionBitsLe(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public EofExceptionBitsLe(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, EofExceptionBitsLe _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        _attrStart.put("preBits", this._io.pos());
        this.preBits = this._io.readBitsIntLe(7);
        _attrEnd.put("preBits", this._io.pos());
        _attrStart.put("failBits", this._io.pos());
        this.failBits = this._io.readBitsIntLe(18);
        _attrEnd.put("failBits", this._io.pos());
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        this._io.writeBitsIntLe(7, this.preBits);
        this._io.writeBitsIntLe(18, this.failBits);
    }

    public void _check() {
    }
    private long preBits;
    private long failBits;
    private EofExceptionBitsLe _root;
    private KaitaiStruct.ReadWrite _parent;
    public long preBits() { return preBits; }
    public void setPreBits(long _v) { preBits = _v; }
    public long failBits() { return failBits; }
    public void setFailBits(long _v) { failBits = _v; }
    public EofExceptionBitsLe _root() { return _root; }
    public void set_root(EofExceptionBitsLe _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
