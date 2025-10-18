// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class ValidFailRepeatMinInt : KaitaiStruct
    {
        public static ValidFailRepeatMinInt FromFile(string fileName)
        {
            return new ValidFailRepeatMinInt(new KaitaiStream(fileName));
        }

        public ValidFailRepeatMinInt(KaitaiStream p__io, KaitaiStruct p__parent = null, ValidFailRepeatMinInt p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _foo = new List<sbyte>();
            {
                var i = 0;
                while (!m_io.IsEof) {
                    _foo.Add(m_io.ReadS1());
                    if (!(_foo[i] >= 0))
                    {
                        throw new ValidationLessThanError(0, _foo[i], m_io, "/seq/0");
                    }
                    i++;
                }
            }
        }
        public List<sbyte> Foo { get { return _foo; } }
        public ValidFailRepeatMinInt M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private List<sbyte> _foo;
        private ValidFailRepeatMinInt m_root;
        private KaitaiStruct m_parent;
    }
}
