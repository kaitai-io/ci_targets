// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ValidSwitch extends KaitaiStruct {
    public static ValidSwitch fromFile(String fileName) throws IOException {
        return new ValidSwitch(new ByteBufferKaitaiStream(fileName));
    }

    public ValidSwitch(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidSwitch(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ValidSwitch(KaitaiStream _io, KaitaiStruct _parent, ValidSwitch _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.a = this._io.readU1();
        if (!(a() == 80)) {
            throw new KaitaiStream.ValidationNotEqualError(80, a(), _io(), "/seq/0");
        }
        switch (a()) {
        case 80: {
            this.b = (int) (this._io.readU2le());
            break;
        }
        default: {
            this.b = (int) (this._io.readU2be());
            break;
        }
        }
        if (!(b() == 17217)) {
            throw new KaitaiStream.ValidationNotEqualError(17217, b(), _io(), "/seq/1");
        }
    }
    private int a;
    private int b;
    private ValidSwitch _root;
    private KaitaiStruct _parent;
    public int a() { return a; }
    public int b() { return b; }
    public ValidSwitch _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
