// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ValidFailEqInt : KaitaiStruct
    {
        public static ValidFailEqInt FromFile(string fileName)
        {
            return new ValidFailEqInt(new KaitaiStream(fileName));
        }

        public ValidFailEqInt(KaitaiStream p__io, KaitaiStruct p__parent = null, ValidFailEqInt p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _foo = m_io.ReadU1();
            if (!(Foo == 123))
            {
                throw new ValidationNotEqualError(123, Foo, M_Io, "/seq/0");
            }
        }
        private byte _foo;
        private ValidFailEqInt m_root;
        private KaitaiStruct m_parent;
        public byte Foo { get { return _foo; } }
        public ValidFailEqInt M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
