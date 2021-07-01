// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.Charset;

public class ValidFailRangeStr extends KaitaiStruct {
    public static ValidFailRangeStr fromFile(String fileName) throws IOException {
        return new ValidFailRangeStr(new ByteBufferKaitaiStream(fileName));
    }

    public ValidFailRangeStr(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailRangeStr(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ValidFailRangeStr(KaitaiStream _io, KaitaiStruct _parent, ValidFailRangeStr _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.foo = new String(this._io.readBytes(2), Charset.forName("ASCII"));
        if (!((foo().compareTo("P") >= 0))) {
            throw new KaitaiStream.ValidationLessThanError("P", foo(), _io(), "/seq/0");
        }
        if (!((foo().compareTo("P1") <= 0))) {
            throw new KaitaiStream.ValidationGreaterThanError("P1", foo(), _io(), "/seq/0");
        }
    }
    private String foo;
    private ValidFailRangeStr _root;
    private KaitaiStruct _parent;
    public String foo() { return foo; }
    public ValidFailRangeStr _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
