// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ValidFailRepeatMinInt extends KaitaiStruct {
    public static ValidFailRepeatMinInt fromFile(String fileName) throws IOException {
        return new ValidFailRepeatMinInt(new ByteBufferKaitaiStream(fileName));
    }

    public ValidFailRepeatMinInt(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailRepeatMinInt(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ValidFailRepeatMinInt(KaitaiStream _io, KaitaiStruct _parent, ValidFailRepeatMinInt _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.foo = new ArrayList<Byte>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                this.foo.add(this._io.readS1());
                if (!(this.foo.get(((Number) (i)).intValue()) >= 0)) {
                    throw new KaitaiStream.ValidationLessThanError(0, this.foo.get(((Number) (i)).intValue()), this._io, "/seq/0");
                }
                i++;
            }
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.foo.size(); i++) {
        }
    }
    public List<Byte> foo() { return foo; }
    public ValidFailRepeatMinInt _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private List<Byte> foo;
    private ValidFailRepeatMinInt _root;
    private KaitaiStruct _parent;
}
