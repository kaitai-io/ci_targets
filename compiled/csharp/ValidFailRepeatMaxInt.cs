// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class ValidFailRepeatMaxInt : KaitaiStruct
    {
        public static ValidFailRepeatMaxInt FromFile(string fileName)
        {
            return new ValidFailRepeatMaxInt(new KaitaiStream(fileName));
        }

        public ValidFailRepeatMaxInt(KaitaiStream p__io, KaitaiStruct p__parent = null, ValidFailRepeatMaxInt p__root = null) : base(p__io)
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
                    if (!(_foo[i] <= 254))
                    {
                        throw new ValidationGreaterThanError(254, _foo[i], m_io, "/seq/0");
                    }
                    i++;
                }
            }
        }
        private List<byte> _foo;
        private ValidFailRepeatMaxInt m_root;
        private KaitaiStruct m_parent;
        public List<byte> Foo { get { return _foo; } }
        public ValidFailRepeatMaxInt M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
