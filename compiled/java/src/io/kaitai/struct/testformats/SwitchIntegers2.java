// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class SwitchIntegers2 extends KaitaiStruct {
    public static SwitchIntegers2 fromFile(String fileName) throws IOException {
        return new SwitchIntegers2(new ByteBufferKaitaiStream(fileName));
    }

    public SwitchIntegers2(KaitaiStream _io) {
        this(_io, null, null);
    }

    public SwitchIntegers2(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public SwitchIntegers2(KaitaiStream _io, KaitaiStruct _parent, SwitchIntegers2 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.code = this._io.readU1();
        switch (code()) {
        case 1: {
            this.len = this._io.readU1();
            break;
        }
        case 2: {
            this.len = this._io.readU2le();
            break;
        }
        case 4: {
            this.len = this._io.readU4le();
            break;
        }
        case 8: {
            this.len = this._io.readU8le();
            break;
        }
        }
        this.ham = this._io.readBytes(len());
        if (len() > 3) {
            this.padding = this._io.readU1();
        }
    }
    private String lenModStr;
    public String lenModStr() {
        if (this.lenModStr != null)
            return this.lenModStr;
        this.lenModStr = Long.toString(((len() * 2) - 1), 10);
        return this.lenModStr;
    }
    private int code;
    private Long len;
    private byte[] ham;
    private Integer padding;
    private SwitchIntegers2 _root;
    private KaitaiStruct _parent;
    public int code() { return code; }
    public Long len() { return len; }
    public byte[] ham() { return ham; }
    public Integer padding() { return padding; }
    public SwitchIntegers2 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
