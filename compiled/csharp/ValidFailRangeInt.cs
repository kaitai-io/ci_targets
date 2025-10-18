// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ValidFailRangeInt : KaitaiStruct
    {
        public static ValidFailRangeInt FromFile(string fileName)
        {
            return new ValidFailRangeInt(new KaitaiStream(fileName));
        }

        public ValidFailRangeInt(KaitaiStream p__io, KaitaiStruct p__parent = null, ValidFailRangeInt p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _foo = m_io.ReadU1();
            if (!(_foo >= 5))
            {
                throw new ValidationLessThanError(5, _foo, m_io, "/seq/0");
            }
            if (!(_foo <= 10))
            {
                throw new ValidationGreaterThanError(10, _foo, m_io, "/seq/0");
            }
        }
        public byte Foo { get { return _foo; } }
        public ValidFailRangeInt M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private byte _foo;
        private ValidFailRangeInt m_root;
        private KaitaiStruct m_parent;
    }
}
