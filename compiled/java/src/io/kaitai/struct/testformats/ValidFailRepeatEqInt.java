// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;

public class ValidFailRepeatEqInt extends KaitaiStruct {
    public static ValidFailRepeatEqInt fromFile(String fileName) throws IOException {
        return new ValidFailRepeatEqInt(new ByteBufferKaitaiStream(fileName));
    }

    public ValidFailRepeatEqInt(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailRepeatEqInt(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ValidFailRepeatEqInt(KaitaiStream _io, KaitaiStruct _parent, ValidFailRepeatEqInt _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.foo = new ArrayList<Long>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                this.foo.add(this._io.readU4be());
                if (!(this.foo.get((int) i) == 305419896)) {
                    throw new KaitaiStream.ValidationNotEqualError(305419896, this.foo.get((int) i), this._io, "/seq/0");
                }
                i++;
            }
        }
    }
    private ArrayList<Long> foo;
    private ValidFailRepeatEqInt _root;
    private KaitaiStruct _parent;
    public ArrayList<Long> foo() { return foo; }
    public ValidFailRepeatEqInt _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
