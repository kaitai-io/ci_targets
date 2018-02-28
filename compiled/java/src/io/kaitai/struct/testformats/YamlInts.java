// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class YamlInts extends KaitaiStruct {
    public static YamlInts fromFile(String fileName) throws IOException {
        return new YamlInts(new ByteBufferKaitaiStream(fileName));
    }

    public YamlInts(KaitaiStream _io) {
        this(_io, null, null);
    }

    public YamlInts(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public YamlInts(KaitaiStream _io, KaitaiStruct _parent, YamlInts _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
    }
    private Integer testU4Dec;
    public Integer testU4Dec() {
        if (this.testU4Dec != null)
            return this.testU4Dec;
        int _tmp = (int) (4294967295L);
        this.testU4Dec = _tmp;
        return this.testU4Dec;
    }
    private Integer testU4Hex;
    public Integer testU4Hex() {
        if (this.testU4Hex != null)
            return this.testU4Hex;
        int _tmp = (int) (4294967295L);
        this.testU4Hex = _tmp;
        return this.testU4Hex;
    }
    private Integer testU8Dec;
    public Integer testU8Dec() {
        if (this.testU8Dec != null)
            return this.testU8Dec;
        int _tmp = (int) (0xffffffffffffffffL);
        this.testU8Dec = _tmp;
        return this.testU8Dec;
    }
    private Integer testU8Hex;
    public Integer testU8Hex() {
        if (this.testU8Hex != null)
            return this.testU8Hex;
        int _tmp = (int) (0xffffffffffffffffL);
        this.testU8Hex = _tmp;
        return this.testU8Hex;
    }
    private YamlInts _root;
    private KaitaiStruct _parent;
    public YamlInts _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
