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

    public void _fetchInstances() {
    }
    public Integer testU4Dec() {
        if (this.testU4Dec != null)
            return this.testU4Dec;
        this.testU4Dec = ((int) 4294967295L);
        return this.testU4Dec;
    }
    public Integer testU4Hex() {
        if (this.testU4Hex != null)
            return this.testU4Hex;
        this.testU4Hex = ((int) 4294967295L);
        return this.testU4Hex;
    }
    public Integer testU8Dec() {
        if (this.testU8Dec != null)
            return this.testU8Dec;
        this.testU8Dec = ((int) 0xffffffffffffffffL);
        return this.testU8Dec;
    }
    public Integer testU8Hex() {
        if (this.testU8Hex != null)
            return this.testU8Hex;
        this.testU8Hex = ((int) 0xffffffffffffffffL);
        return this.testU8Hex;
    }
    public YamlInts _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private Integer testU4Dec;
    private Integer testU4Hex;
    private Integer testU8Dec;
    private Integer testU8Hex;
    private YamlInts _root;
    private KaitaiStruct _parent;
}
