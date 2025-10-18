// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class ValidFailRepeatEqInt : KaitaiStruct
    {
        public static ValidFailRepeatEqInt FromFile(string fileName)
        {
            return new ValidFailRepeatEqInt(new KaitaiStream(fileName));
        }

        public ValidFailRepeatEqInt(KaitaiStream p__io, KaitaiStruct p__parent = null, ValidFailRepeatEqInt p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _foo = new List<uint>();
            {
                var i = 0;
                while (!m_io.IsEof) {
                    _foo.Add(m_io.ReadU4be());
                    if (!(_foo[i] == 305419896))
                    {
                        throw new ValidationNotEqualError(305419896, _foo[i], m_io, "/seq/0");
                    }
                    i++;
                }
            }
        }
        public List<uint> Foo { get { return _foo; } }
        public ValidFailRepeatEqInt M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private List<uint> _foo;
        private ValidFailRepeatEqInt m_root;
        private KaitaiStruct m_parent;
    }
}
