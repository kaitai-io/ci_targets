// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ValidFailAnyofInt extends KaitaiStruct {
    public static ValidFailAnyofInt fromFile(String fileName) throws IOException {
        return new ValidFailAnyofInt(new ByteBufferKaitaiStream(fileName));
    }

    public ValidFailAnyofInt(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailAnyofInt(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ValidFailAnyofInt(KaitaiStream _io, KaitaiStruct _parent, ValidFailAnyofInt _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.foo = this._io.readU1();
        if (!( ((foo() == 5) || (foo() == 6) || (foo() == 7) || (foo() == 8) || (foo() == 10) || (foo() == 11) || (foo() == 12) || (foo() == 47)) )) {
            throw new KaitaiStream.ValidationNotAnyOfError(foo(), _io(), "/seq/0");
        }
    }
    private int foo;
    private ValidFailAnyofInt _root;
    private KaitaiStruct _parent;
    public int foo() { return foo; }
    public ValidFailAnyofInt _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
