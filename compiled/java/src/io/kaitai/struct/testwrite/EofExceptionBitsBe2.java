// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class EofExceptionBitsBe2 extends KaitaiStruct.ReadWrite {
    public Map<String, Integer> _attrStart = new HashMap<String, Integer>();
    public Map<String, Integer> _attrEnd = new HashMap<String, Integer>();
    public Map<String, List<Integer>> _arrStart = new HashMap<String, List<Integer>>();
    public Map<String, List<Integer>> _arrEnd = new HashMap<String, List<Integer>>();

    public static EofExceptionBitsBe2 fromFile(String fileName) throws IOException {
        return new EofExceptionBitsBe2(new ByteBufferKaitaiStream(fileName));
    }
    public static String[] _seqFields = new String[] { "preBits", "failBits" };
    public EofExceptionBitsBe2() {
        this(null, null, null);
    }

    public EofExceptionBitsBe2(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EofExceptionBitsBe2(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public EofExceptionBitsBe2(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, EofExceptionBitsBe2 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        _attrStart.put("preBits", this._io.pos());
        this.preBits = this._io.readBitsIntBe(8);
        _attrEnd.put("preBits", this._io.pos());
        _attrStart.put("failBits", this._io.pos());
        this.failBits = this._io.readBitsIntBe(17);
        _attrEnd.put("failBits", this._io.pos());
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeBitsIntBe(8, this.preBits);
        this._io.writeBitsIntBe(17, this.failBits);
    }

    public void _check() {
        _dirty = false;
    }
    private long preBits;
    private long failBits;
    private EofExceptionBitsBe2 _root;
    private KaitaiStruct.ReadWrite _parent;
    public long preBits() { return preBits; }
    public void setPreBits(long _v) { _dirty = true; preBits = _v; }
    public long failBits() { return failBits; }
    public void setFailBits(long _v) { _dirty = true; failBits = _v; }
    public EofExceptionBitsBe2 _root() { return _root; }
    public void set_root(EofExceptionBitsBe2 _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
