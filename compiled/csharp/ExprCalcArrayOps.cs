// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;
using System.Linq;

namespace Kaitai
{
    public partial class ExprCalcArrayOps : KaitaiStruct
    {
        public static ExprCalcArrayOps FromFile(string fileName)
        {
            return new ExprCalcArrayOps(new KaitaiStream(fileName));
        }

        public ExprCalcArrayOps(KaitaiStream p__io, KaitaiStruct p__parent = null, ExprCalcArrayOps p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_doubleArray = false;
            f_doubleArrayFirst = false;
            f_doubleArrayLast = false;
            f_doubleArrayMax = false;
            f_doubleArrayMid = false;
            f_doubleArrayMin = false;
            f_doubleArraySize = false;
            f_intArray = false;
            f_intArrayFirst = false;
            f_intArrayLast = false;
            f_intArrayMax = false;
            f_intArrayMid = false;
            f_intArrayMin = false;
            f_intArraySize = false;
            f_strArray = false;
            f_strArrayFirst = false;
            f_strArrayLast = false;
            f_strArrayMax = false;
            f_strArrayMid = false;
            f_strArrayMin = false;
            f_strArraySize = false;
            _read();
        }
        private void _read()
        {
        }
        private bool f_doubleArray;
        private List<double> _doubleArray;
        public List<double> DoubleArray
        {
            get
            {
                if (f_doubleArray)
                    return _doubleArray;
                f_doubleArray = true;
                _doubleArray = (List<double>) (new List<double> { 10.0, 25.0, 50.0, 100.0, 3.14159 });
                return _doubleArray;
            }
        }
        private bool f_doubleArrayFirst;
        private double _doubleArrayFirst;
        public double DoubleArrayFirst
        {
            get
            {
                if (f_doubleArrayFirst)
                    return _doubleArrayFirst;
                f_doubleArrayFirst = true;
                _doubleArrayFirst = (double) (DoubleArray[0]);
                return _doubleArrayFirst;
            }
        }
        private bool f_doubleArrayLast;
        private double _doubleArrayLast;
        public double DoubleArrayLast
        {
            get
            {
                if (f_doubleArrayLast)
                    return _doubleArrayLast;
                f_doubleArrayLast = true;
                _doubleArrayLast = (double) (DoubleArray[DoubleArray.Count - 1]);
                return _doubleArrayLast;
            }
        }
        private bool f_doubleArrayMax;
        private double _doubleArrayMax;
        public double DoubleArrayMax
        {
            get
            {
                if (f_doubleArrayMax)
                    return _doubleArrayMax;
                f_doubleArrayMax = true;
                _doubleArrayMax = (double) (DoubleArray.Max());
                return _doubleArrayMax;
            }
        }
        private bool f_doubleArrayMid;
        private double _doubleArrayMid;
        public double DoubleArrayMid
        {
            get
            {
                if (f_doubleArrayMid)
                    return _doubleArrayMid;
                f_doubleArrayMid = true;
                _doubleArrayMid = (double) (DoubleArray[1]);
                return _doubleArrayMid;
            }
        }
        private bool f_doubleArrayMin;
        private double _doubleArrayMin;
        public double DoubleArrayMin
        {
            get
            {
                if (f_doubleArrayMin)
                    return _doubleArrayMin;
                f_doubleArrayMin = true;
                _doubleArrayMin = (double) (DoubleArray.Min());
                return _doubleArrayMin;
            }
        }
        private bool f_doubleArraySize;
        private int _doubleArraySize;
        public int DoubleArraySize
        {
            get
            {
                if (f_doubleArraySize)
                    return _doubleArraySize;
                f_doubleArraySize = true;
                _doubleArraySize = (int) (DoubleArray.Count);
                return _doubleArraySize;
            }
        }
        private bool f_intArray;
        private List<int> _intArray;
        public List<int> IntArray
        {
            get
            {
                if (f_intArray)
                    return _intArray;
                f_intArray = true;
                _intArray = (List<int>) (new List<int> { 10, 25, 50, 100, 200, 500, 1000 });
                return _intArray;
            }
        }
        private bool f_intArrayFirst;
        private int _intArrayFirst;
        public int IntArrayFirst
        {
            get
            {
                if (f_intArrayFirst)
                    return _intArrayFirst;
                f_intArrayFirst = true;
                _intArrayFirst = (int) (IntArray[0]);
                return _intArrayFirst;
            }
        }
        private bool f_intArrayLast;
        private int _intArrayLast;
        public int IntArrayLast
        {
            get
            {
                if (f_intArrayLast)
                    return _intArrayLast;
                f_intArrayLast = true;
                _intArrayLast = (int) (IntArray[IntArray.Count - 1]);
                return _intArrayLast;
            }
        }
        private bool f_intArrayMax;
        private int _intArrayMax;
        public int IntArrayMax
        {
            get
            {
                if (f_intArrayMax)
                    return _intArrayMax;
                f_intArrayMax = true;
                _intArrayMax = (int) (IntArray.Max());
                return _intArrayMax;
            }
        }
        private bool f_intArrayMid;
        private int _intArrayMid;
        public int IntArrayMid
        {
            get
            {
                if (f_intArrayMid)
                    return _intArrayMid;
                f_intArrayMid = true;
                _intArrayMid = (int) (IntArray[1]);
                return _intArrayMid;
            }
        }
        private bool f_intArrayMin;
        private int _intArrayMin;
        public int IntArrayMin
        {
            get
            {
                if (f_intArrayMin)
                    return _intArrayMin;
                f_intArrayMin = true;
                _intArrayMin = (int) (IntArray.Min());
                return _intArrayMin;
            }
        }
        private bool f_intArraySize;
        private int _intArraySize;
        public int IntArraySize
        {
            get
            {
                if (f_intArraySize)
                    return _intArraySize;
                f_intArraySize = true;
                _intArraySize = (int) (IntArray.Count);
                return _intArraySize;
            }
        }
        private bool f_strArray;
        private List<string> _strArray;
        public List<string> StrArray
        {
            get
            {
                if (f_strArray)
                    return _strArray;
                f_strArray = true;
                _strArray = (List<string>) (new List<string> { "un", "deux", "trois", "quatre" });
                return _strArray;
            }
        }
        private bool f_strArrayFirst;
        private string _strArrayFirst;
        public string StrArrayFirst
        {
            get
            {
                if (f_strArrayFirst)
                    return _strArrayFirst;
                f_strArrayFirst = true;
                _strArrayFirst = (string) (StrArray[0]);
                return _strArrayFirst;
            }
        }
        private bool f_strArrayLast;
        private string _strArrayLast;
        public string StrArrayLast
        {
            get
            {
                if (f_strArrayLast)
                    return _strArrayLast;
                f_strArrayLast = true;
                _strArrayLast = (string) (StrArray[StrArray.Count - 1]);
                return _strArrayLast;
            }
        }
        private bool f_strArrayMax;
        private string _strArrayMax;
        public string StrArrayMax
        {
            get
            {
                if (f_strArrayMax)
                    return _strArrayMax;
                f_strArrayMax = true;
                _strArrayMax = (string) (StrArray.Max());
                return _strArrayMax;
            }
        }
        private bool f_strArrayMid;
        private string _strArrayMid;
        public string StrArrayMid
        {
            get
            {
                if (f_strArrayMid)
                    return _strArrayMid;
                f_strArrayMid = true;
                _strArrayMid = (string) (StrArray[1]);
                return _strArrayMid;
            }
        }
        private bool f_strArrayMin;
        private string _strArrayMin;
        public string StrArrayMin
        {
            get
            {
                if (f_strArrayMin)
                    return _strArrayMin;
                f_strArrayMin = true;
                _strArrayMin = (string) (StrArray.Min());
                return _strArrayMin;
            }
        }
        private bool f_strArraySize;
        private int _strArraySize;
        public int StrArraySize
        {
            get
            {
                if (f_strArraySize)
                    return _strArraySize;
                f_strArraySize = true;
                _strArraySize = (int) (StrArray.Count);
                return _strArraySize;
            }
        }
        private ExprCalcArrayOps m_root;
        private KaitaiStruct m_parent;
        public ExprCalcArrayOps M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
