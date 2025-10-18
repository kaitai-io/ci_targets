// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class ValidFailRepeatAnyofInt : KaitaiStruct
    {
        public static ValidFailRepeatAnyofInt FromFile(string fileName)
        {
            return new ValidFailRepeatAnyofInt(new KaitaiStream(fileName));
        }

        public ValidFailRepeatAnyofInt(KaitaiStream p__io, KaitaiStruct p__parent = null, ValidFailRepeatAnyofInt p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _foo = new List<byte>();
            {
                var i = 0;
                while (!m_io.IsEof) {
                    _foo.Add(m_io.ReadU1());
                    if (!( ((_foo[i] == 0) || (_foo[i] == 1) || (_foo[i] == 65)) ))
                    {
                        throw new ValidationNotAnyOfError(_foo[i], m_io, "/seq/0");
                    }
                    i++;
                }
            }
        }
        public List<byte> Foo { get { return _foo; } }
        public ValidFailRepeatAnyofInt M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private List<byte> _foo;
        private ValidFailRepeatAnyofInt m_root;
        private KaitaiStruct m_parent;
    }
}
