// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System;

namespace Kaitai
{
    public partial class ValidFailInEnum : KaitaiStruct
    {
        public static ValidFailInEnum FromFile(string fileName)
        {
            return new ValidFailInEnum(new KaitaiStream(fileName));
        }


        public enum Animal
        {
            Dog = 4,
            Chicken = 12,
        }
        public ValidFailInEnum(KaitaiStream p__io, KaitaiStruct p__parent = null, ValidFailInEnum p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _foo = ((Animal) m_io.ReadU4le());
            if (!Enum.IsDefined(typeof(Animal), _foo))
            {
                throw new ValidationNotInEnumError(_foo, m_io, "/seq/0");
            }
        }
        public Animal Foo { get { return _foo; } }
        public ValidFailInEnum M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private Animal _foo;
        private ValidFailInEnum m_root;
        private KaitaiStruct m_parent;
    }
}
