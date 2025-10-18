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
        if (!( ((this.foo == 5) || (this.foo == 6) || (this.foo == 7) || (this.foo == 8) || (this.foo == 10) || (this.foo == 11) || (this.foo == 12) || (this.foo == 47)) )) {
            throw new KaitaiStream.ValidationNotAnyOfError(this.foo, this._io, "/seq/0");
        }
    }

    public void _fetchInstances() {
    }
    public int foo() { return foo; }
    public ValidFailAnyofInt _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private int foo;
    private ValidFailAnyofInt _root;
    private KaitaiStruct _parent;
}
