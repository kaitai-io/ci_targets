// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ValidFailRepeatAnyofInt extends KaitaiStruct {
    public static ValidFailRepeatAnyofInt fromFile(String fileName) throws IOException {
        return new ValidFailRepeatAnyofInt(new ByteBufferKaitaiStream(fileName));
    }

    public ValidFailRepeatAnyofInt(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailRepeatAnyofInt(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ValidFailRepeatAnyofInt(KaitaiStream _io, KaitaiStruct _parent, ValidFailRepeatAnyofInt _root) {
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
                if (!( ((this.foo.get(((Number) (i)).intValue()) == 0) || (this.foo.get(((Number) (i)).intValue()) == 1) || (this.foo.get(((Number) (i)).intValue()) == 65)) )) {
                    throw new KaitaiStream.ValidationNotAnyOfError(this.foo.get(((Number) (i)).intValue()), this._io, "/seq/0");
                }
                i++;
            }
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.foo.size(); i++) {
        }
    }
    public List<Integer> foo() { return foo; }
    public ValidFailRepeatAnyofInt _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private List<Integer> foo;
    private ValidFailRepeatAnyofInt _root;
    private KaitaiStruct _parent;
}
