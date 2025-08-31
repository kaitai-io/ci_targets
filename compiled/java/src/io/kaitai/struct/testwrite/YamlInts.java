// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class YamlInts extends KaitaiStruct.ReadWrite {
    public static YamlInts fromFile(String fileName) throws IOException {
        return new YamlInts(new ByteBufferKaitaiStream(fileName));
    }
    public YamlInts() {
        this(null, null, null);
    }

    public YamlInts(KaitaiStream _io) {
        this(_io, null, null);
    }

    public YamlInts(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public YamlInts(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, YamlInts _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
    }

    public void _check() {
    }
    private Integer testU4Dec;
    public Integer testU4Dec() {
        if (this.testU4Dec != null)
            return this.testU4Dec;
        this.testU4Dec = ((int) 4294967295L);
        return this.testU4Dec;
    }
    public void _invalidateTestU4Dec() { this.testU4Dec = null; }
    private Integer testU4Hex;
    public Integer testU4Hex() {
        if (this.testU4Hex != null)
            return this.testU4Hex;
        this.testU4Hex = ((int) 4294967295L);
        return this.testU4Hex;
    }
    public void _invalidateTestU4Hex() { this.testU4Hex = null; }
    private Integer testU8Dec;
    public Integer testU8Dec() {
        if (this.testU8Dec != null)
            return this.testU8Dec;
        this.testU8Dec = ((int) 0xffffffffffffffffL);
        return this.testU8Dec;
    }
    public void _invalidateTestU8Dec() { this.testU8Dec = null; }
    private Integer testU8Hex;
    public Integer testU8Hex() {
        if (this.testU8Hex != null)
            return this.testU8Hex;
        this.testU8Hex = ((int) 0xffffffffffffffffL);
        return this.testU8Hex;
    }
    public void _invalidateTestU8Hex() { this.testU8Hex = null; }
    private YamlInts _root;
    private KaitaiStruct.ReadWrite _parent;
    public YamlInts _root() { return _root; }
    public void set_root(YamlInts _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
