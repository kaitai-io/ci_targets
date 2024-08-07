// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

public class ValidFailEqStr extends KaitaiStruct {
    public static ValidFailEqStr fromFile(String fileName) throws IOException {
        return new ValidFailEqStr(new ByteBufferKaitaiStream(fileName));
    }

    public ValidFailEqStr(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailEqStr(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ValidFailEqStr(KaitaiStream _io, KaitaiStruct _parent, ValidFailEqStr _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.foo = new String(this._io.readBytes(4), StandardCharsets.US_ASCII);
        if (!(this.foo.equals("BACK"))) {
            throw new KaitaiStream.ValidationNotEqualError("BACK", this.foo, this._io, "/seq/0");
        }
    }
    private String foo;
    private ValidFailEqStr _root;
    private KaitaiStruct _parent;
    public String foo() { return foo; }
    public ValidFailEqStr _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
