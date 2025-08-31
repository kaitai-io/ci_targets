// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ValidFailRepeatMaxInt extends KaitaiStruct {
    public static ValidFailRepeatMaxInt fromFile(String fileName) throws IOException {
        return new ValidFailRepeatMaxInt(new ByteBufferKaitaiStream(fileName));
    }

    public ValidFailRepeatMaxInt(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailRepeatMaxInt(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ValidFailRepeatMaxInt(KaitaiStream _io, KaitaiStruct _parent, ValidFailRepeatMaxInt _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.foo = new ArrayList<Integer>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                this.foo.add(this._io.readU1());
                if (!(this.foo.get(((Number) (i)).intValue()) <= 254)) {
                    throw new KaitaiStream.ValidationGreaterThanError(254, this.foo.get(((Number) (i)).intValue()), this._io, "/seq/0");
                }
                i++;
            }
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.foo.size(); i++) {
        }
    }
    private List<Integer> foo;
    private ValidFailRepeatMaxInt _root;
    private KaitaiStruct _parent;
    public List<Integer> foo() { return foo; }
    public ValidFailRepeatMaxInt _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
