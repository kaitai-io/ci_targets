// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class ValidFailRepeatContents extends KaitaiStruct {
    public static ValidFailRepeatContents fromFile(String fileName) throws IOException {
        return new ValidFailRepeatContents(new ByteBufferKaitaiStream(fileName));
    }

    public ValidFailRepeatContents(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailRepeatContents(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ValidFailRepeatContents(KaitaiStream _io, KaitaiStruct _parent, ValidFailRepeatContents _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.foo = new ArrayList<byte[]>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                this.foo.add(this._io.readBytes(4));
                if (!(Arrays.equals(this.foo.get(((Number) (i)).intValue()), new byte[] { 18, 52, 86, 120 }))) {
                    throw new KaitaiStream.ValidationNotEqualError(new byte[] { 18, 52, 86, 120 }, this.foo.get(((Number) (i)).intValue()), this._io, "/seq/0");
                }
                i++;
            }
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.foo.size(); i++) {
        }
    }
    private List<byte[]> foo;
    private ValidFailRepeatContents _root;
    private KaitaiStruct _parent;
    public List<byte[]> foo() { return foo; }
    public ValidFailRepeatContents _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
