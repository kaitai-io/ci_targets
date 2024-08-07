// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ValidFailMinInt : KaitaiStruct
    {
        public static ValidFailMinInt FromFile(string fileName)
        {
            return new ValidFailMinInt(new KaitaiStream(fileName));
        }

        public ValidFailMinInt(KaitaiStream p__io, KaitaiStruct p__parent = null, ValidFailMinInt p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _foo = m_io.ReadU1();
            if (!(_foo >= 123))
            {
                throw new ValidationLessThanError(123, _foo, m_io, "/seq/0");
            }
        }
        private byte _foo;
        private ValidFailMinInt m_root;
        private KaitaiStruct m_parent;
        public byte Foo { get { return _foo; } }
        public ValidFailMinInt M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
