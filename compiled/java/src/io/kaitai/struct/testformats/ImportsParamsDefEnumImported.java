// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ImportsParamsDefEnumImported extends KaitaiStruct {
    public static ImportsParamsDefEnumImported fromFile(String fileName) throws IOException {
        return new ImportsParamsDefEnumImported(new ByteBufferKaitaiStream(fileName));
    }

    public ImportsParamsDefEnumImported(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ImportsParamsDefEnumImported(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ImportsParamsDefEnumImported(KaitaiStream _io, KaitaiStruct _parent, ImportsParamsDefEnumImported _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.one = new EnumImportSeq(this._io);
        this.two = new ParamsDefEnumImported(this._io, one().pet1(), one().pet2());
    }
    private EnumImportSeq one;
    private ParamsDefEnumImported two;
    private ImportsParamsDefEnumImported _root;
    private KaitaiStruct _parent;
    public EnumImportSeq one() { return one; }
    public ParamsDefEnumImported two() { return two; }
    public ImportsParamsDefEnumImported _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
